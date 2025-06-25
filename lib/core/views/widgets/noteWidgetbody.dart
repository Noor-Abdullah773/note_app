import 'package:flutter/material.dart';
import 'customAppBar.dart';
import 'customListViewBuilder.dart';
class NoteWidgetBody extends StatelessWidget {
  const NoteWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 24) ,
      child: Column(children: [
        CustomAppBar(title:'Notes' ,icon:Icons.search ,),
        Expanded(
          child: CustomListViewBuilder(),
        )
      ],),
    );
  }
}

