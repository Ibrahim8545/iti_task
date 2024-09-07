import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
   CustomTextFormFiled({required this.obText ,this.icon,required this.validatorText ,required this.labelText , super.key});
String labelText;
String validatorText;
IconData? icon;
bool obText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
        border:const  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder( borderSide: BorderSide(color: Colors.black),),
        enabledBorder:const  OutlineInputBorder( borderSide: BorderSide(color: Colors.black),),
        labelStyle: const TextStyle(color: Colors.black),
        labelText:'$labelText', 
        suffixIcon: Icon(icon),
      ),
      validator: (value) {
        return validatorText;
      },
      obscureText:obText ,
      
    );
  }
}