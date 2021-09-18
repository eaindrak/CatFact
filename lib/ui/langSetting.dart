import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/languages.dart';
import 'package:cat_fact/widgets/custom_painter_widget.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';
import '../generated/locale_keys.g.dart';

class LangSettingPage extends StatefulWidget {
  const LangSettingPage({ Key? key }) : super(key: key);

  @override
  _LangSettingPageState createState() => _LangSettingPageState();
}

class _LangSettingPageState extends State<LangSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.cityLight,
      appBar: AppBar(
        backgroundColor: ColorConst.exodusFruit,
        title: Text(LocaleKeys.choosepreferlanguage.tr(),style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),),
        leading: IconButton(
          icon: Icon(
            Icons.close,color: ColorConst.cityLight,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*1/2,
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*1/4,),
                painter: LanguageCurvePainter(),
                child: Column(
                  children:[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset("assets/images/comment.svg"),
                      )),
                    SvgPicture.asset("assets/images/cathacker.svg"),
                  ]
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(bottom: 5,left: 5,right: 5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: ColorConst.shyMoment,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: InkResponse(
                      onTap: (){
                        if(context.locale.languageCode!=allLanguageList[index].language_code){
                          context.setLocale(Locale(allLanguageList[index].language_code));
                        }
                      },
                      child: ListTile(
                        leading: SvgPicture.asset(allLanguageList[index].flag_svg),
                        title: Text(allLanguageList[index].name),
                        trailing: Icon(Icons.check_box_outlined,color: context.locale.languageCode==allLanguageList[index].language_code?ColorConst.cityLight:Colors.transparent,),
                      ),
                    ),
                  );
                },
                itemCount: allLanguageList.length
              ),
            )
          ],
        ),
      ),
    );
  }
}