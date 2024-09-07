import 'package:flutter/material.dart';

class CustomButttom extends StatelessWidget {
  CustomButttom({this.onTap,this.textStyle, this .color,required this.text, super.key});
Color? color;
String text;
TextStyle? textStyle ;
void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          border: Border.all(color: Colors.amber)
          
          
        ),
        child: Text(
          text,
          style: textStyle,
          textAlign: TextAlign.center,),
      ),
    );
  }
}