import 'package:flutter/material.dart';

import 'CustomTextField.dart';
import 'customAppBar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 24) ,
      child: Column(children: [
        CustomAppBar(title:'Edit Note' ,icon: Icons.check,),
        SizedBox(height:16 ,),
        CustomTextFild(hint: 'Title', maxLines: 1,),
        SizedBox(height: 10,),
        CustomTextFild(hint: 'Content', maxLines: 3,),
      ],),
    );
  }
}