import 'package:note_app/core/models/note_model.dart';

class ReadNoteStates{}
class InitialReadNoteState extends ReadNoteStates{}
class LoadingReadNoteState extends ReadNoteStates{}
class SeccessReadNoteState extends ReadNoteStates{
  final List<NoteModel> list;
  SeccessReadNoteState({required this.list});
}
class FailureReadNoteState extends ReadNoteStates{
  final String errorMessage;
  FailureReadNoteState({required this.errorMessage});
}