import 'package:flutter/material.dart';
import 'package:loginscreen/home_screen.dart';
import 'package:loginscreen/widget/login_modal_route.dart';
import 'package:loginscreen/widget/signup_moda_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
   debugShowMaterialGrid: false,
   home:HomeScreen() ,
   routes: {
    LoginModalButtomSheet.routeName:(context) => LoginModalButtomSheet(),
    SignUpModalButtomSheet.routenName:(context) => SignUpModalButtomSheet(),
   },
    );

  }
}

