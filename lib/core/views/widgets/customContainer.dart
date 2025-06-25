import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){} ,
      child: Container(
        width:double.infinity ,
        height:50 ,
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(8),
          color:Color.fromARGB(255, 14, 230, 230)  
        ) ,
        child:Center(child: Text('Add',style: TextStyle(color: Colors.black),)) ,
      ),
    );
  }
}