import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_breed.dart';
import 'package:cat_fact/ui/cat/cat_breed_detail_page.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BreedWidgetImageLeft extends StatelessWidget {
  final String breedName;final String labelName;final String labelDesc;final CatBreed catBreed;
  const BreedWidgetImageLeft({Key? key,required this.breedName,required this.labelName,required this.labelDesc,required this.catBreed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CatBreedDetailPage(catBreed: catBreed, svgName: "assets/images/noto-v1_cat.svg")));
      },
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1 / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConst.cityLight
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1.1 / 3,
              height: double.infinity,
              padding: EdgeInsets.all(20),
              child: SvgPicture.asset(
                "assets/images/noto-v1_cat.svg",
                semanticsLabel: 'Cat Image',
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConst.exodusFruit),
              padding: EdgeInsets.all(7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    breedName,
                    style: TextStyles.largeText
                        .copyWith(color: ColorConst.cityLight, fontSize: 16),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        labelName,
                        style: TextStyles.smallText
                            .copyWith(color: ColorConst.cityLight, fontSize: 12),
                      ),
                      Text(
                        labelDesc.length>40?(labelDesc.substring(0,40)+"..."):labelDesc,
                        style: TextStyles.largeText
                            .copyWith(color: ColorConst.cityLight, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
