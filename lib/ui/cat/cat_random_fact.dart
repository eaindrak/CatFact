import 'package:cat_fact/states/cat/cat_fact/cat_provider.dart';
import 'package:cat_fact/widgets/cat_fact_widget.dart';
import 'package:cat_fact/widgets/state_error_widget.dart';
import 'package:cat_fact/widgets/state_loading_widget.dart';
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
      data: (cat_randomFact,image)=>CatFactWithImageWidget(
        imageName: image,
        factDes: cat_randomFact.fact,
        btnWidget:  ElevatedButton.icon(
          onPressed: () {
            ref.read(catNotifierProvider.notifier).getRandomFact();
          },
          icon: Icon(Icons.next_plan),
          label: Text("Next Fact")
        )
      ),
      error: (error) => StateErrorWidget(error: error!),
    );
  }
}