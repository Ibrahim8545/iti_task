import 'package:flutter/material.dart';

class LoginModalButtomSheet extends StatelessWidget {
  const LoginModalButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding:const  EdgeInsets.all(14),
      decoration:const  BoxDecoration(
          color: Color(0xffffecaa),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),

      
    );
  }
}