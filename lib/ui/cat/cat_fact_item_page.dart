import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/model/tranlate_text.dart';
import 'package:cat_fact/states/cat/cat_fact/cat_provider.dart';
import 'package:cat_fact/widgets/cat_fact_widget.dart';
import 'package:cat_fact/widgets/state_error_widget.dart';
import 'package:cat_fact/widgets/state_loading_widget.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
class CatFactItemPage extends ConsumerStatefulWidget {
  final CatFact catFact;
  const CatFactItemPage({ Key? key,required this.catFact }) : super(key: key);

  @override
  _CatFactItemPageState createState() => _CatFactItemPageState();
}

class _CatFactItemPageState extends ConsumerState<CatFactItemPage> {

  @override
  void initState() {
    Future.delayed(
        Duration.zero,
        () =>ref.read(catNotifierProvider.notifier).getExistingFact(catFact: widget.catFact));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return CatFactWithImageWidget(
    //   imageName: widget.imageName,
    //   factDes: widget.factName,
    //   btnWidget: SizedBox(width: 1,height: 1,),
    // );
    final state = ref.watch(catNotifierProvider);
    
    return state.when(
      initial: () => Text(
        'Get Data',
        textAlign: TextAlign.center,
      ),
      loading: () => StateLoadingWidget(),
      data: (cat_randomFact,image,langcode,transText)=>CatFactWithImageWidget(
        imageName: image,
        factDes: cat_randomFact.fact,
        btnWidget:  context.locale.languageCode!="en"?
        _translate(cat_randomFact,image,langcode=="en"?context.locale.languageCode:"en",transText):SizedBox(width: 1,height: 1,),
      ),
      error: (error) => StateErrorWidget(error: error!),
    );
  }

  Widget _translate(CatFact catFact,String image,String localeCode,TranslateText translateText){
    return ElevatedButton.icon(
      onPressed: () {
        ref.read(catNotifierProvider.notifier).translateText(catFact: catFact,image: image,localeCode: localeCode,translateText: translateText);
      },
      icon: Icon(Icons.language),
      label: Text(localeCode=="en"?"View Original":"View Translate",style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),)
    );
  }
}