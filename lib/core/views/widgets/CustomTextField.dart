import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key,required this.hint,required this.maxLines});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:kPrimaryColor ,
       maxLines:maxLines,
      decoration:InputDecoration(
        hintText: hint,
        hintStyle:TextStyle(color: kPrimaryColor) ,
        border:buildBorder() ,
        focusedBorder: buildBorder(color:kPrimaryColor)
      ) ,
    );
  }

  OutlineInputBorder buildBorder({ Color? color}) {
    return OutlineInputBorder(
        borderSide:BorderSide(
          color:color??Colors.white ) ,
        borderRadius:BorderRadius.circular(8) 
      );
  }
}