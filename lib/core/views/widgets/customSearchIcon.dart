import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key,required this.icon,this.onTap});
final IconData icon;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
          color:Colors.white.withOpacity(0.05) ,
          borderRadius: BorderRadius.circular(16),
        ),
        child:Icon(icon,size:24 ,) ,
      ),
    );
  }
}