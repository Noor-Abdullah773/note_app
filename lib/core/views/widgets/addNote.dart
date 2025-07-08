import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/core/models/note_model.dart';
import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../cubits/add_note_cubit/add_note_cubit_state.dart';
import '../../cubits/read_note_cubit/read_note_cubit.dart';
import 'CustomTextField.dart';
import 'colorListViewBuilder.dart';
import 'customContainer.dart';
import 'package:intl/intl.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled; 
  String? title,subtitle;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>NoteCubit() ,
      child: Padding(
        padding:   EdgeInsets.only(top:20,left: 10,right: 10,
        bottom:MediaQuery.of(context).viewInsets.bottom  ),
        child: BlocConsumer <NoteCubit ,AddNoteState>(
          listener:(context,state){
            if(state is AddNoteSeccess){
              BlocProvider.of<ReadNoteCubit>(context).fetchData();
            Navigator.pop(context);
            }
            if(state is AddNoteFailure){
              print('f');
            }
           
          },
          builder: (context,state){
          return ModalProgressHUD(
            inAsyncCall:State is AddNoteLoading?true:false,
            child: Form(
              autovalidateMode: autoValidateMode,
              key: key,
              child: Column(
                children: [
                  CustomTextFild(
                    hint: 'Title',
                     maxLines: 1,
                     onSaved:(data){
                      title=data;
                     } ,
                     ),
                  SizedBox(height: 10,),
                  CustomTextFild(
                    hint: 'Content',
                    maxLines:3 ,
                    onSaved: (data){
                      subtitle=data;
                    },
                    ),
                  Spacer(),
                
                  ColorListView(),
                   SizedBox(height:3,),
                  CustomContainer(
                    onTap:(){
                      if(key.currentState!.validate())
                      {
                        key.currentState!.save();
                        var format = DateFormat.yMd().format(DateTime.now());
                        var color = BlocProvider.of<NoteCubit>(context).color;
                        var noteModle = NoteModel(title: title!, subTitle: subtitle!, date:format, color:color.value);
                        BlocProvider.of<NoteCubit>(context).addNote(noteModle);
                      }else{
                       // autoValidateMode = AutovalidateMode.always;
                        setState(() {
                          
                        });
                      }
                    } ,
                  )
              ],),
            ),
          );
        
      }
        ),
      ),
    );
  }
}