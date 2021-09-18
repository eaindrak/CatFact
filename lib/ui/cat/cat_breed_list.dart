import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_breed.dart';
import 'package:cat_fact/states/cat/cat_breed/cat_breed_list_provider.dart';
import 'package:cat_fact/widgets/breed_widget_img_left.dart';
import 'package:cat_fact/widgets/breed_widget_img_right.dart';
import 'package:cat_fact/widgets/cat_breed_bottom_sheet.dart';
import 'package:cat_fact/widgets/search_delegate_page.dart';
import 'package:cat_fact/widgets/state_error_widget.dart';
import 'package:cat_fact/widgets/state_loading_widget.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../generated/locale_keys.g.dart';

class CatBreedListPage extends ConsumerStatefulWidget {
  const CatBreedListPage({ Key? key }) : super(key: key);

  @override
  _CatBreedListPageState createState() => _CatBreedListPageState();
}

class _CatBreedListPageState extends ConsumerState<CatBreedListPage> {

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    Future.delayed(
        Duration.zero,
        () =>ref.read(catBreedListNotifierProvider.notifier).getAllBreedListByPage(1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _mainWidget();
  }

  Widget _mainWidget(){
    final state = ref.watch(catBreedListNotifierProvider);
    return state.when(
      initial: () => Text(
        'Get Data',
        textAlign: TextAlign.center,
      ),
      loading: ()=>StateLoadingWidget(), 
      data: (catBreedList){

        void _moreLoading(){
          if(catBreedList.currentPage<=catBreedList.lastPage){
            int _newIndex=catBreedList.currentPage;
            ref.read(catBreedListNotifierProvider.notifier).getAllBreedListByPage(_newIndex+1);
            _refreshController.loadComplete();
          }
        }

        return Scaffold(
          backgroundColor: ColorConst.brightyYellow,
          appBar: AppBar(
            backgroundColor: ColorConst.brightyYellow,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: ColorConst.dracularOrchid,),onPressed: (){
              Navigator.pop(context);
            },),
            title: Text(LocaleKeys.ourbreeds.tr(),style: TextStyles.smallText.copyWith(color: ColorConst.dracularOrchid),),
            actions: [
              Center(
                child: Container(
                  child: Text("Page: "+catBreedList.currentPage.toString(),style: TextStyles.largeText.copyWith(fontWeight: FontWeight.bold,color: ColorConst.dracularOrchid),)),
              ),
              IconButton(icon: Icon(Icons.search,color: ColorConst.dracularOrchid,),onPressed: ()async{
                var res=await showSearch(
                  context: context,
                  delegate: TheSearch(listToSearch: catBreedList.catbreedList,type: 'breed'),
                );
                if(res!=null){
                  showBreedInfoModal(context,res,"assets/images/noto-v1_cat.svg", _searchBtn(res),_translateBtn(),);
                }
              },),
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(7),
            child: SmartRefresher(
              enablePullDown: true,
              enablePullUp: true,
              controller: _refreshController,
              header: WaterDropHeader(),
              footer: CustomFooter(
                builder: (BuildContext context,LoadStatus? mode){
                  Widget body ;
                  if(mode==LoadStatus.idle){
                    body =  Text("pull up load");
                  }
                  else if(mode==LoadStatus.loading){
                    body =  CupertinoActivityIndicator();
                  }
                  else if(mode == LoadStatus.failed){
                    body = Text("Load Failed!Click retry!");
                  }
                  else if(mode == LoadStatus.canLoading){
                      body = Text("release to load more");
                  }
                  else if(catBreedList.currentPage>=catBreedList.lastPage){
                    body = Text("No more Data");
                  }else{
                    body=Text("");
                  }
                  return Container(
                    height: 55.0,
                    child: Center(child:body),
                  );
                },
              ),
              onLoading: _moreLoading,
              onRefresh: _refreshing,
              child: ListView.separated(
                padding: EdgeInsets.all(7),
                itemBuilder: (context,index){
                  String breedName=catBreedList.catbreedList[index].breed;
                  String labelName=catBreedList.catbreedList[index].country!=""?LocaleKeys.country.tr():(catBreedList.catbreedList[index].origin!=""?LocaleKeys.origin.tr():(catBreedList.catbreedList[index].coat!=""?LocaleKeys.coat.tr():(catBreedList.catbreedList[index].pattern!=""?LocaleKeys.pattern.tr():"")));
                  String labelDesc=catBreedList.catbreedList[index].country!=""?catBreedList.catbreedList[index].country:(catBreedList.catbreedList[index].origin!=""?catBreedList.catbreedList[index].origin:(catBreedList.catbreedList[index].coat!=""?catBreedList.catbreedList[index].coat:(catBreedList.catbreedList[index].pattern!=""?catBreedList.catbreedList[index].pattern:"")));
                  return index%2!=0?
                  BreedWidgetImageLeft(breedName: breedName,labelName: labelName,labelDesc: labelDesc,catBreed: catBreedList.catbreedList[index],searchBtn: _searchBtn(catBreedList.catbreedList[index]),translateBtn: _translateBtn(),):
                  BreedWidgetImageRight(breedName: breedName,labelName: labelName,labelDesc: labelDesc,catBreed: catBreedList.catbreedList[index],searchBtn: _searchBtn(catBreedList.catbreedList[index]),translateBtn: _translateBtn(),);
                },
                separatorBuilder: (context,index){
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal:7));
                },
                itemCount: catBreedList.catbreedList.length,
              ),
            ),
          ),
        );
      }, 
      error: (error) => StateErrorWidget(error: error!),
    );
  }

  void _refreshing(){
    ref.read(catBreedListNotifierProvider.notifier).getAllBreedListByPage(1);
    _refreshController.loadComplete();
  }

  Widget _searchBtn(CatBreed catBreed){
    return ElevatedButton(
      child: Text(LocaleKeys.searchongoogle.tr()),
      onPressed: ()async{
        var _url="https://www.google.com/search?q=${catBreed.breed} breed";
        if (await canLaunch(_url)) {
          await launch(_url, forceSafariVC: false);
        } else {
          throw 'Could not launch $_url';
        }
      },
    );
  }

  Widget _translateBtn(){
    return ElevatedButton.icon(
      onPressed: () {
        //ref.read(catNotifierProvider.notifier).translateText(catFact: catFact,image: image,localeCode: localeCode,translateText: translateText);
      },
      icon: Icon(Icons.language),
      label: Text("View Translate",style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),)
    );
  }
}