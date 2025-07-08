import 'package:flutter/material.dart';
import 'package:note_app/core/models/note_model.dart';

import '../widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key,required this.note});
static String id='edit note';
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNoteBody(note: note,),
      ),
    );
  }
}