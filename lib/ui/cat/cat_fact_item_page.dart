import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/model/tranlate_text.dart';
import 'package:cat_fact/states/cat/cat_fact/cat_provider.dart';
import 'package:cat_fact/widgets/cat_fact_widget.dart';
import 'package:cat_fact/widgets/confirm_dialog.dart';
import 'package:cat_fact/widgets/state_error_widget.dart';
import 'package:cat_fact/widgets/state_loading_widget.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../generated/locale_keys.g.dart';
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
    final state = ref.watch(catNotifierProvider);
    
    return state.when(
      initial: () => Text(
        'Get Data',
        textAlign: TextAlign.center,
      ),
      loading: () => StateLoadingWidget(),
      data: (cat_randomFact,image,langcode,transText,isSaved,msg){
        if(msg!="") ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg),duration: Duration(seconds: 3),));
        return CatFactWithImageWidget(
          imageName: image,
          saveToFav: _saveToFavorite(cat_randomFact,image,langcode,transText,isSaved),
          factDes: cat_randomFact.fact,
          btnWidget:  context.locale.languageCode!="en"?
          _translate(cat_randomFact,image,langcode=="en"?context.locale.languageCode:"en",transText,isSaved):SizedBox(width: 1,height: 1,),
        );
      },
      error: (error) => StateErrorWidget(error: error!),
    );
  }

  Widget _translate(CatFact catFact,String image,String localeCode,TranslateText translateText,int isSaved){
    return ElevatedButton.icon(
      onPressed: () {
        ref.read(catNotifierProvider.notifier).translateText(catFact: catFact,image: image,localeCode: localeCode,translateText: translateText,isSaved: isSaved);
      },
      icon: Icon(Icons.language),
      label: Text(localeCode=="en"?LocaleKeys.original.tr():LocaleKeys.translate.tr(),style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),)
    );
  }

  Widget _saveToFavorite(CatFact catFact,String image,String localeCode,TranslateText translateText,int isSaved){
    return IconButton(
      tooltip: isSaved>0?"Favorite":"Click To Add Favorite",
      icon: SvgPicture.asset("assets/images/heart.svg",semanticsLabel: 'Heart Image',color: isSaved>0?ColorConst.chigong:ColorConst.shyMoment,),
      onPressed: ()async{
        if(isSaved>0){
          final res=await confirmRemoveDialog(context);
          if(res!=null&&res==true){
            ref.read(catNotifierProvider.notifier).removeFavorite(catFact: catFact, image: image, localeCode: localeCode, translateText: translateText);
          }
        }else{
          ref.read(catNotifierProvider.notifier).addToFavorite(catFact: catFact, image: image, localeCode: localeCode, translateText: translateText);
        }
      }
    );
  }
}