import 'package:flutter/material.dart';

import 'customNoteItem.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding:EdgeInsets.zero ,
        itemBuilder:(context,index){
          return CustomNoteItem();
        }),
    );
  }
}