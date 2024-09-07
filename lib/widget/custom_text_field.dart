import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String labelText;
  final String? validatorText;
  final IconData? icon;
  final bool obscureText;
  TextEditingController? controller;

  CustomTextFormFiled({
    required this.labelText,
    this.icon,
    TextEditingController? controller,
    this.validatorText,
    required this.obscureText,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        labelStyle: const TextStyle(color: Colors.black),
        labelText: labelText,
        suffixIcon: icon != null ? Icon(icon) : null,
      ),
      validator: (value) 
      {
        if(value!.isEmpty)
        {
          return(validatorText);
        }
      },
      obscureText: obscureText,
      controller:controller ,
    );
  }
}


