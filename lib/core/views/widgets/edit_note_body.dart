import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:note_app/core/models/note_model.dart';
import 'CustomTextField.dart';
import 'colorListViewEdit.dart';
import 'customAppBar.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key,required this.note});
final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 24) ,
      child: Column(children: [
        CustomAppBar
        (title:'Edit Note' ,
        icon: Icons.check,
        onTap: (){
          widget.note.title=title??widget.note.title ;
          widget.note.subTitle=subtitle??widget.note.subTitle;
          widget.note.save();
          BlocProvider.of<ReadNoteCubit>(context).fetchData();
          Navigator.pop(context);
        },),
        SizedBox(height:16 ,),
        CustomTextFild(
          hint: widget.note.title,
           maxLines: 1,
           onChanged:(data){
            title=data;
           } ,
           ),
        SizedBox(height: 10,),
        CustomTextFild(
          hint: widget.note.subTitle, 
          maxLines: 5,
         onChanged: (data){
           subtitle=data;
         },
          ),
          ColorListViewEdit(note: widget.note,)
      ],),
    );
  }
}