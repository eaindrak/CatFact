import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/model/tranlate_text.dart';
import 'package:cat_fact/states/cat/cat_fact/cat_provider.dart';
import 'package:cat_fact/widgets/cat_fact_widget.dart';
import 'package:cat_fact/widgets/state_error_widget.dart';
import 'package:cat_fact/widgets/state_loading_widget.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class CatRandomFact extends ConsumerStatefulWidget {
  const CatRandomFact({ Key? key }) : super(key: key);

  @override
  _CatRandomFactState createState() => _CatRandomFactState();
}

class _CatRandomFactState extends ConsumerState<CatRandomFact> {

  @override
  void initState() {
    Future.delayed(
        Duration.zero,
        () =>ref.read(catNotifierProvider.notifier).getRandomFact());
    super.initState();
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
      loading: () => StateLoadingWidget(),
      data: (cat_randomFact,image,langcode,transText,isSaved)=>CatFactWithImageWidget(
        imageName: image,
        factDes: cat_randomFact.fact,
        saveToFav: _saveToFavorite(cat_randomFact,image,langcode,transText,isSaved),
        btnWidget:  context.locale.languageCode!="en"?Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _translate(cat_randomFact,image,langcode=="en"?context.locale.languageCode:"en",transText,isSaved),_nextFact()
          ],
        ):_nextFact()
      ),
      error: (error) => StateErrorWidget(error: error!),
    );
  }

  Widget _nextFact(){
    return ElevatedButton.icon(
      onPressed: () {
        ref.read(catNotifierProvider.notifier).getRandomFact();
      },
      icon: Icon(Icons.next_plan),
      label: Text(LocaleKeys.viewnextfact.tr(),style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),)
    );
  }

  Widget _translate(CatFact catFact,String image,String localeCode,TranslateText translateText,int isSaved){
    return IconButton(
      onPressed: () {
        ref.read(catNotifierProvider.notifier).translateText(catFact: catFact,image: image,localeCode: localeCode,translateText: translateText,isSaved: isSaved);
      },
      icon: Icon(Icons.language,color: ColorConst.cityLight,),
      tooltip: localeCode=="en"?LocaleKeys.original.tr():LocaleKeys.translate.tr(),
    );
  }

  Widget _saveToFavorite(CatFact catFact,String image,String localeCode,TranslateText translateText,int isSaved){
    return IconButton(
      tooltip: isSaved>0?"Added To Favorite":"Not Favorite",
      icon: SvgPicture.asset("assets/images/heart.svg",semanticsLabel: 'Heart Image',color: isSaved>0?ColorConst.exodusFruit:ColorConst.shyMoment,),
      onPressed: (){
        ref.read(catNotifierProvider.notifier).addToFavorite(catFact: catFact, image: image, localeCode: localeCode, translateText: translateText);
      }
    );
  }
}