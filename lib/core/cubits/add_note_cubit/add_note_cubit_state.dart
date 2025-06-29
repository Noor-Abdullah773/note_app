abstract class AddNoteState{}
class AddNoteInitial extends AddNoteState{}
class AddNoteLoading extends AddNoteState{}
class AddNoteSeccess extends AddNoteState{}
class AddNoteFailure extends AddNoteState{
  final String message;
  AddNoteFailure({required this.message});
}
