import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/states/cat/cat_fact_list/cat_fact_list_provider.dart';
import 'package:cat_fact/ui/cat/cat_fact_item_page.dart';
import 'package:cat_fact/widgets/search_delegate_page.dart';
import 'package:cat_fact/widgets/state_error_widget.dart';
import 'package:cat_fact/widgets/state_loading_widget.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class CatAllFactsPage extends ConsumerStatefulWidget {
  const CatAllFactsPage({ Key? key }) : super(key: key);

  @override
  _CatAllFactsPageState createState() => _CatAllFactsPageState();
}

class _CatAllFactsPageState extends ConsumerState<CatAllFactsPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    Future.delayed(
        Duration.zero,
        () =>ref.read(catFactListNotifierProvider.notifier).getAllFactListByPage(1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _catFactList();
  }

  Widget _catFactList(){
    final state = ref.watch(catFactListNotifierProvider);

    return state.when(
      initial: () => Text(
        'Get Data',
        textAlign: TextAlign.center,
      ),
      loading: ()=>StateLoadingWidget(), 
      data: (catFactLIst){

        void _moreLoading(){
          if(catFactLIst.currentPage<=catFactLIst.lastPage){
            int _newIndex=catFactLIst.currentPage;
            ref.read(catFactListNotifierProvider.notifier).getAllFactListByPage(_newIndex+1);
            _refreshController.loadComplete();
          }
        }

        return Scaffold(
          backgroundColor: ColorConst.shyMoment,
          appBar: AppBar(
            backgroundColor: ColorConst.shyMoment,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: ColorConst.cityLight,),onPressed: (){
              Navigator.pop(context);
            },),
            title: Text(LocaleKeys.heyhooman.tr(),style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),),
            actions: [
              Center(
                child: Container(
                  child: Text("Page: "+catFactLIst.currentPage.toString(),style: TextStyles.largeText.copyWith(fontWeight: FontWeight.bold),)),
              ),
              IconButton(icon: Icon(Icons.search,color: ColorConst.brightyYellow,),onPressed: ()async{
                var res=await showSearch(
                  context: context,
                  delegate: TheSearch(listToSearch: catFactLIst.catFactDataList,type: 'fact'),
                );
                if(res!=null&& res is CatFact){
                  _goToDetail(res);
                }
              },),
            ],
          ),
          body: Container(
            padding: EdgeInsets.only(top: 5),
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
                  else if(catFactLIst.currentPage>=catFactLIst.lastPage){
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
                  return ListTile(
                    onTap: ()=>_goToDetail(catFactLIst.catFactDataList[index]),
                    visualDensity: VisualDensity(horizontal: 2),
                    leading: index%2!=0?SvgPicture.asset("assets/images/cat_heart.svg",semanticsLabel: 'Cat Image',width: 50,):null,
                    trailing: index%2==0?SvgPicture.asset("assets/images/cat_heart.svg",semanticsLabel: 'Cat Image',width: 50,):null,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    tileColor: ColorConst.cityLight,
                    hoverColor: ColorConst.electronBlue,
                    title: Text(
                      catFactLIst.catFactDataList[index].fact.length>100?(catFactLIst.catFactDataList[index].fact.substring(0,100)+"..."):catFactLIst.catFactDataList[index].fact,
                      textAlign: index%2==0?TextAlign.right:TextAlign.left,
                    ),
                  );
                },
                separatorBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]
                    ),
                    padding: EdgeInsets.only(top: 5));
                },
                itemCount: catFactLIst.catFactDataList.length,
              ),
            ),
          ),
        );
      }, 
      error: (error) => StateErrorWidget(error: error!),
    );    
  }

  void _refreshing(){
    ref.read(catFactListNotifierProvider.notifier).getAllFactListByPage(1);
    _refreshController.loadComplete();
  }

  void _goToDetail(CatFact catFact){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CatFactItemPage(catFact: catFact ,)));
  }
}