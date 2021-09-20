import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_breed.dart';
import 'package:cat_fact/model/tranlate_text.dart';
import 'package:cat_fact/states/cat/cat_breed/cat_breed_provider.dart';
import 'package:cat_fact/widgets/cat_breed_detail_widget.dart';
import 'package:cat_fact/widgets/state_error_widget.dart';
import 'package:cat_fact/widgets/state_loading_widget.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class CatBreedDetailPage extends ConsumerStatefulWidget {
  final CatBreed catBreed;final String svgName;
  const CatBreedDetailPage({ Key? key,required this.catBreed,required this.svgName,}) : super(key: key);

  @override
  _CatBreedDetailPageState createState() => _CatBreedDetailPageState();
}

class _CatBreedDetailPageState extends ConsumerState<CatBreedDetailPage> {

  @override
  void initState() {
    Future.delayed(
        Duration.zero,
        () =>ref.read(catBreedNotifierProvider.notifier).getExistingBreed(catBreed: widget.catBreed, svgImage: widget.svgName));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(catBreedNotifierProvider);
    
    return state.when(
      initial: () => Text(
        'Get Data',
        textAlign: TextAlign.center,
      ),
      loading: () => StateLoadingWidget(),
      data: (catBreed,image,langcode,transBreed,isTrans)=>CatBreedDetailWidget(
        catBreed: catBreed, 
        svgName: image, 
        searchBtn: _searchBtn(transBreed.originalBreed), 
        transBtn: _translateBtn(catBreed,image,langcode=="en"?context.locale.languageCode:"en",transBreed,isTrans)
      ),
      error: (error) => StateErrorWidget(error: error!),
    );
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

  Widget _translateBtn(CatBreed catBreed,String imageName,String langCode,TranslateBreed translateBreed,bool isTranslated){
    return ElevatedButton.icon(
      onPressed: () {
        ref.read(catBreedNotifierProvider.notifier).
          translateBreed(catBreed: widget.catBreed, svgImage: widget.svgName,localeCode: langCode,translateBreed: translateBreed,isTranslated: isTranslated);
      },
      icon: Icon(Icons.language),
      label: Text(langCode=="en"?LocaleKeys.original.tr():LocaleKeys.translate.tr(),style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),)
    );
  }
}