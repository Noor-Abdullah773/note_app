import 'package:flutter/material.dart';

import '../widgets/addNote.dart';
import '../widgets/noteWidgetbody.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
static String id ='note view';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            
            showModalBottomSheet(context: context, builder:(context){
              return AddNote();
            },
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.only(topLeft:Radius.circular(16),topRight:Radius.circular(16)) 
            ),
            backgroundColor:Color.fromARGB(255, 64, 63, 63)
            );
            
          },
          child:Icon(Icons.add) ,),
        body:NoteWidgetBody() ,
      ),
    );
  }
}