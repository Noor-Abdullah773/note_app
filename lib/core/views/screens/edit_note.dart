import 'package:flutter/material.dart';

import '../widgets/edit_note_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});
static String id='edit note';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNoteBody(),
      ),
    );
  }
}