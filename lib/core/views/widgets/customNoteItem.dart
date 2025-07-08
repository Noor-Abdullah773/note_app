import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/views/screens/edit_note.dart';
import '../../cubits/read_note_cubit/read_note_cubit.dart';
import '../../models/note_model.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key,required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin:EdgeInsets.only(bottom: 5) ,
        padding:EdgeInsets.symmetric(horizontal:10,vertical: 15 ) ,
        decoration:BoxDecoration(
          color:Color(note.color),
          borderRadius: BorderRadius.circular(12) ,
        ) ,
        child:Column(crossAxisAlignment:CrossAxisAlignment.end ,
          children: [
          ListTile(
            title: Text(note.title,style:TextStyle(fontSize:26,color:Colors.black  ) ,),
            subtitle: Text(note.subTitle,style:TextStyle(fontSize:20,color:Colors.black.withOpacity(0.5)   ) ,),
            trailing:IconButton(
              onPressed:(){
                note.delete();
                BlocProvider.of<ReadNoteCubit>(context).fetchData();
              },
               icon:const Icon(Icons.delete,size:30 ,color:Colors.black ,)),
            
       ),
       Text(note.date,style:TextStyle(color:Colors.black.withOpacity(0.4),fontSize:16) ,)
        ],) ,
      ),
      onTap:(){
        Navigator.pushNamed(context,EditNote.id,arguments:note );
      } ,
    );
  }
}