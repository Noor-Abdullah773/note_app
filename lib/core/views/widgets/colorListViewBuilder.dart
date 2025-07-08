import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/add_note_cubit/add_note_cubit.dart';
import 'colorItem.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors=[
Color(0xffD3221a),
Color(0xffe822B1),
Color.fromARGB(255, 199, 230, 126),
Color.fromARGB(255, 221, 84, 182),

  ];
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
                BlocProvider.of<NoteCubit>(context).color=colors[index];
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