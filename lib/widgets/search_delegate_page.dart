import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TheSearch extends SearchDelegate<dynamic>{
  final List<dynamic> listToSearch;final String type;
  TheSearch({required this.listToSearch,required this.type}):super();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
        query.isEmpty?
        SizedBox(width: 1,):
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          },
        )
      ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context,null),
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestions = query.isEmpty ? listToSearch : 
    (type=='fact'?listToSearch.where((element) => element.fact.toString().toLowerCase().contains(query)).toList():listToSearch.where((element) => element.breed.toString().toLowerCase().contains(query)).toList());
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (content, index) => ListTile(
        onTap: ()=>close(context,suggestions[index]),
        leading: SvgPicture.asset(type=='fact'?"assets/images/cat_heart.svg":"assets/images/twemoji_cat.svg",semanticsLabel: 'Cat Image',width: 30,), 
        title: Text(type=='fact'?suggestions[index].fact.toString():suggestions[index].breed.toString())
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty ? listToSearch : 
    (type=='fact'?listToSearch.where((element) => element.fact.toString().toLowerCase().contains(query)).toList():listToSearch.where((element) => element.breed.toString().toLowerCase().contains(query)).toList());
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (content, index) => ListTile(
        onTap: ()=>close(context,suggestions[index]),
        leading: SvgPicture.asset(type=='fact'?"assets/images/cat_heart.svg":"assets/images/twemoji_cat.svg",semanticsLabel: 'Cat Image',width: 30,), 
        title: Text(type=='fact'?suggestions[index].fact.toString():suggestions[index].breed.toString())
      ),
    );
  }

}