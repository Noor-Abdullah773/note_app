import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/core/constant.dart';
import 'package:note_app/core/models/note_model.dart';
import 'add_note_cubit_state.dart';
import 'package:flutter/material.dart';
class NoteCubit extends Cubit<AddNoteState>{
  NoteCubit():super(AddNoteInitial());
Color color = Colors.red;
  addNote(NoteModel noteModel)async{
  noteModel.color=color.value;
    try {
      emit(AddNoteLoading());
  var noteBox = Hive.box<NoteModel>(kNoteBox);
  await noteBox.add(noteModel);
  emit(AddNoteSeccess());
} on Exception catch (e) {
 emit(AddNoteFailure(message:e.toString()));
}
    

  }

}