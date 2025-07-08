import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/models/note_model.dart';
import '../../cubits/read_note_cubit/read_note_cubit.dart';
import '../../cubits/read_note_cubit/read_note_state.dart';
import 'customNoteItem.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     BlocProvider.of<ReadNoteCubit>(context).fetchData();
    return BlocBuilder<ReadNoteCubit,ReadNoteStates>(
   builder:(context, state){  
   
    List<NoteModel> notes = BlocProvider.of<ReadNoteCubit>(context).notes??[]; 
    print(notes);   
   return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          padding:EdgeInsets.zero ,
          itemCount:notes.length ,
          itemBuilder:(context,index){
            return CustomNoteItem(note:notes[index],);
          }),
      );
      }
    );
  }
}