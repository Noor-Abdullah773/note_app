import 'package:flutter/material.dart';
import 'package:note_app/core/views/screens/edit_note.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin:EdgeInsets.only(bottom: 5) ,
        padding:EdgeInsets.symmetric(horizontal:10,vertical: 15 ) ,
        decoration:BoxDecoration(
          color:Colors.orange,
          borderRadius: BorderRadius.circular(12) ,
        ) ,
        child:Column(crossAxisAlignment:CrossAxisAlignment.end ,
          children: [
          ListTile(
            title:const Text('khjgfyfhjhjj',style:TextStyle(fontSize:26,color:Colors.black  ) ,),
            subtitle: Text('khjgfyfhjhjjjjhhftdujkjjdh',style:TextStyle(fontSize:20,color:Colors.black.withOpacity(0.5)   ) ,),
            trailing:IconButton(
              onPressed:(){},
               icon:const Icon(Icons.delete,size:30 ,color:Colors.black ,)),
            
       ),
       Text('May  21.2022',style:TextStyle(color:Colors.black.withOpacity(0.4),fontSize:16) ,)
        ],) ,
      ),
      onTap:(){
        Navigator.pushNamed(context,EditNote.id);
      } ,
    );
  }
}