import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/core/views/screens/edit_note.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'core/constant.dart';
import 'core/models/note_model.dart';
import 'core/views/screens/note_view.dart';

void main() async{
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
   Hive.registerAdapter(NoteModelAdapter());  
  await Hive.openBox<NoteModel>(kNoteBox);
 
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