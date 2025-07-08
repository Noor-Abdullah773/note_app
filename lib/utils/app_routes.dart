import 'package:flutter/material.dart';
import 'package:note_app/core/models/note_model.dart';

import '../core/views/screens/edit_note.dart';
import '../core/views/screens/note_view.dart';


class AppRoutes{
  static Route<dynamic>? routeManager(RouteSettings settings ){

    switch(settings.name){
      case  'note view': return MaterialPageRoute(builder: (ctx)=> NoteView());
      case 'edit note':{
        NoteModel note=settings.arguments as NoteModel;
        return MaterialPageRoute(builder: (ctx)=>EditNote(note:note),settings: settings);}
    
    }


  }
}