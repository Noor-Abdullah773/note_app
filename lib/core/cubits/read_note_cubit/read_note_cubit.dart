import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/core/cubits/read_note_cubit/read_note_state.dart';
import '../../constant.dart';
import '../../models/note_model.dart';

class ReadNoteCubit extends Cubit<ReadNoteStates>{
  ReadNoteCubit():super(InitialReadNoteState());
  List<NoteModel>? notes ;
  fetchData(){
  var noteBox = Hive.box<NoteModel>(kNoteBox);
  notes = noteBox.values.toList();
  print(notes);
  emit(SeccessReadNoteState());

  }

}