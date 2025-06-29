import 'package:bloc/bloc.dart';
import 'package:note_app/core/models/note_model.dart';
import 'add_note_cubit_state.dart';

class NoteCubit extends Cubit{
  NoteCubit():super(AddNoteInitial());

  addNote(NoteModel noteModel){

  }

}