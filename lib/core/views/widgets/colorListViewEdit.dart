import 'package:flutter/material.dart';
import 'package:note_app/core/models/note_model.dart';
import 'colorItem.dart';

class ColorListViewEdit extends StatefulWidget {
 const  ColorListViewEdit({super.key,required this.note});
final  NoteModel note;
  @override
  State<ColorListViewEdit> createState() => _ColorListViewEditState();
}

class _ColorListViewEditState extends State<ColorListViewEdit> {
 late int currentIndex ;
  List<Color> colors=const [
Color(0xffD3221a),
Color(0xffe822B1),
Color.fromARGB(255, 199, 230, 126),
Color.fromARGB(255, 221, 84, 182),

  ];
  @override
  void initState() {
   currentIndex=colors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        scrollDirection:Axis.horizontal ,
        itemCount:colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap:(){
                currentIndex=index;
                widget.note.color=colors[currentIndex].value;
                setState(() {
                  
                });
              } ,
              child: ColorItem(
                isActive:currentIndex==index? true:false,
                 color:colors[index],),
              ),
          );
          },
        
      ),
    );
  }
}