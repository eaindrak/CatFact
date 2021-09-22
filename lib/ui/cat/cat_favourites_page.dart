import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/states/cat/cat_favorite_list/cat_favorite_list_provider.dart';
import 'package:cat_fact/ui/cat/cat_fact_item_page.dart';
import 'package:cat_fact/widgets/state_error_widget.dart';
import 'package:cat_fact/widgets/state_loading_widget.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CatFavPage extends ConsumerStatefulWidget {
  const CatFavPage({Key? key}) : super(key: key);

  @override
  _CatFavPageState createState() => _CatFavPageState();
}

class _CatFavPageState extends ConsumerState<CatFavPage> {
  @override
  void initState() {
    Future.delayed(
        Duration.zero,
        () => ref
            .read(catFavoriteListNotifierProvider.notifier)
            .getAllfavoriteList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(catFavoriteListNotifierProvider);
    return state.when(
      initial: () => Text(
        'Get Data',
        textAlign: TextAlign.center,
      ),
      loading: () => StateLoadingWidget(),
      data: (catFactList) {
        return Scaffold(
          backgroundColor: ColorConst.shyMoment,
          appBar: AppBar(
            backgroundColor: ColorConst.shyMoment,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: ColorConst.cityLight,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              "Hooman's favorites",
              style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),
            ),
          ),
          body: ListView.separated(
              padding: EdgeInsets.all(7),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: ()=>_goToDetail(catFactList[index]),
                  visualDensity: VisualDensity(horizontal: 2),
                  leading: index % 2 != 0
                      ? SvgPicture.asset(
                          "assets/images/cat_heart.svg",
                          semanticsLabel: 'Cat Image',
                          width: 50,
                        )
                      : null,
                  trailing: index % 2 == 0
                      ? SvgPicture.asset(
                          "assets/images/cat_heart.svg",
                          semanticsLabel: 'Cat Image',
                          width: 50,
                        )
                      : null,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: ColorConst.cityLight,
                  hoverColor: ColorConst.electronBlue,
                  title: Text(
                    catFactList[index].fact.length > 100
                        ? (catFactList[index].fact.substring(0, 100) + "...")
                        : catFactList[index].fact,
                    textAlign:
                        index % 2 == 0 ? TextAlign.right : TextAlign.left,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                    padding: EdgeInsets.only(top: 5));
              },
              itemCount: catFactList.length),
        );
      },
      error: (error) => StateErrorWidget(error: error!),
    );
  }

  void _goToDetail(CatFact catFact){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CatFactItemPage(catFact: catFact ,)));
  }
}
