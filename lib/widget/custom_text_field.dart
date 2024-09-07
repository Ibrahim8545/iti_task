import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
   CustomTextFormFiled({required this.labelText , super.key});
String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText:'$labelText', 
      ),
    );
  }
}