import 'package:cat_fact/states/cat/cat_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CatRandomFact extends StatelessWidget {
  const CatRandomFact({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cat Random Fact"),),
      body: Column(children: [
        CatRandomFactData(),
        GetData()
      ],),
    );
  }
}

class CatRandomFactData extends ConsumerWidget {

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(catNotifierProvider);
    
    return state.when(
      initial: () => Text(
        'Get Data',
        textAlign: TextAlign.center,
      ),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
      data: (cat_randomFact) => Text('${cat_randomFact.length}\n${cat_randomFact.fact}'),
      error: (error) => Text('Error Occured!'),
    );
  }
}

class GetData extends ConsumerWidget {
  @override
   Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(catNotifierProvider);
    return ElevatedButton(
      child: Text('Press me to get a joke'),
      onPressed: !state.isLoading
          ? () {
              ref.read(catNotifierProvider.notifier).getRandomFact();
            }
          : null,
    );
  }
}