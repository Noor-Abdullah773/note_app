import 'package:flutter/material.dart';

import 'CustomTextField.dart';
import 'customContainer.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20,horizontal: 10 ),
      child: Column(
        children: [
          CustomTextFild(hint: 'Title', maxLines: 1,),
          SizedBox(height: 10,),
          CustomTextFild(hint: 'Content',maxLines:3 ,),
          Spacer(),
          CustomContainer()
      ],),
    );
  }
}