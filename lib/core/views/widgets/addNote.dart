import 'package:flutter/material.dart';

import 'CustomTextField.dart';
import 'customContainer.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled; 
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20,horizontal: 10 ),
      child: Form(
        autovalidateMode: autoValidateMode,
        key: key,
        child: Column(
          children: [
            CustomTextFild(
              hint: 'Title',
               maxLines: 1,
               onSaved:(data){
                title=data;
               } ,
               ),
            SizedBox(height: 10,),
            CustomTextFild(
              hint: 'Content',
              maxLines:3 ,
              onSaved: (data){
                subtitle=data;
              },
              ),
            Spacer(),
            CustomContainer(
              onTap:(){
                if(key.currentState!.validate())
                {
                  key.currentState!.save();
                }else{
                 // autoValidateMode = AutovalidateMode.always;
                  setState(() {
                    
                  });
                }
              } ,
            )
        ],),
      ),
    );
  }
}