import 'package:flutter/material.dart';
import 'package:note_app/core/views/screens/edit_note.dart';

import 'core/views/screens/note_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        brightness: Brightness.dark,
        
      ),
      routes:{
        EditNote.id :(context) => EditNote(),
        NoteView.id:(context) => NoteView()
      } ,
      initialRoute:NoteView.id ,
    );
  }
}