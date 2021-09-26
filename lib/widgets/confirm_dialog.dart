import 'package:flutter/material.dart';

Future confirmRemoveDialog(BuildContext context){
  return showDialog(
    context: context, 
    builder: (context){
      return AlertDialog(
        title: Text("Remove From Favorite?"),
        actions: [
          ElevatedButton(onPressed: ()=>Navigator.of(context).pop(false), child: Text("Cancel")),
          ElevatedButton(onPressed: ()=>Navigator.of(context).pop(true), child: Text("OK")),
        ],
      );
    }
  );
}