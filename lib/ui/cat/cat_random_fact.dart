import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/states/cat/cat_provider.dart';
import 'package:cat_fact/ui/cat/cat_saveto_gallery.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CatRandomFact extends ConsumerStatefulWidget {
  const CatRandomFact({ Key? key }) : super(key: key);

  @override
  _CatRandomFactState createState() => _CatRandomFactState();
}

class _CatRandomFactState extends ConsumerState<CatRandomFact> {

  @override
  void initState() {
    super.initState();
    ref.read(catNotifierProvider.notifier).getRandomFact();
  }

  @override
  Widget build(BuildContext context) {
    return _catRandomFactData();
  }

  Widget _catRandomFactData(){
    final state = ref.watch(catNotifierProvider);
    
    return state.when(
      initial: () => Text(
        'Get Data',
        textAlign: TextAlign.center,
      ),
      loading: () => Scaffold(
        backgroundColor: ColorConst.cityLight,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 7),
                child: Text("Please Wait",style: TextStyles.smallText.copyWith(color: ColorConst.dracularOrchid),)),
              CircularProgressIndicator()
          ],)
        ),
      ),
      data: (cat_randomFact,image){
        return Scaffold(
          backgroundColor: ColorConst.cityLight,
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back_ios,),onPressed: (){
              Navigator.pop(context);
            },),
            title: Text("Hey Hooman!!!",style: TextStyles.smallText.copyWith(color: ColorConst.dracularOrchid),),
            actions: [
              IconButton(icon: Icon(Icons.image,),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SaveCatToGalleryPage(imgAssetName: image,)));
              },),
              IconButton(icon: Icon(Icons.ten_mp,),onPressed: (){},),
              IconButton(icon: Icon(Icons.share,),onPressed: (){},),
            ],
          ),
          body: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*1/3,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: ColorConst.exodusFruit,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(cat_randomFact.fact,style: TextStyles.largeText.copyWith(color: ColorConst.cityLight),textAlign: TextAlign.center,),
                            ElevatedButton.icon(
                              onPressed: (){
                                ref.read(catNotifierProvider.notifier).getRandomFact();
                              }, 
                              icon: Icon(Icons.next_plan), 
                              label: Text("Next")
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: AppBar().preferredSize.height*1/7,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*1/2.5,
                  child: Image.asset(image,fit: BoxFit.contain,),
                ),
              ),
            ],
          ),
        );
      },
      error: (error) => Text('Error Occured!'),
    );
  }
}