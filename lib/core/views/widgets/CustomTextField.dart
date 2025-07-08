import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key,required this.hint,required this.maxLines,this.onSaved,this.onChanged});
final String hint;
final int maxLines;
final Function(String?)? onSaved;
final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      onChanged:onChanged ,
      validator:(data){
        if(data?.isEmpty?? true){
          return 'this field is impty';
        }else{
          return null;
        }

      } ,
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