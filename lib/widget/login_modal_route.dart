import 'package:flutter/material.dart';
import 'package:loginscreen/widget/custom_button.dart';
import 'package:loginscreen/widget/custom_text_field.dart';
import 'package:loginscreen/widget/signup_moda_route.dart';

class LoginModalButtomSheet extends StatefulWidget {
   LoginModalButtomSheet({super.key});

static const String  routeName='sjhbdf';

  @override
  State<LoginModalButtomSheet> createState() => _LoginModalButtomSheetState();
}

class _LoginModalButtomSheetState extends State<LoginModalButtomSheet> {
var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      child: Container(
          padding:const  EdgeInsets.only(top: 25, left: 16, right: 17),
            decoration: const BoxDecoration(
              color: Color(0xffffecaa),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                    children: [
                      const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back..',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Login',
                            style:
                                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Spacer(),
                      Image.asset('assets/images/Vector.png')
                    ],
                  ),
                   const SizedBox(
                  height: 12,
                ),
                CustomTextFormFiled(
                  labelText: 'Email',
                  validatorText: 'email must be not empty',
                  icon: (Icons.remove_red_eye_outlined),
                  obscureText: false,
                ), 
                 const SizedBox(
                  height: 8,
                ),
          
              CustomTextFormFiled(
                  labelText: ' password',
                  validatorText: 'password must be not empty',
                  icon: (Icons.remove_red_eye_outlined),
                  obscureText: false,
                ),
                 const SizedBox(
                  height: 8,
                ),
          
                CustomButttom(
                  text: 'Login',
                  textStyle: const TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  color: Color(0xff050522),
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Form Submitted Successfully')));
                    }
                  },
                  ),
                                InkWell(
                onTap: () {
                  Navigator.pop(context);
                   showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                   return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                    
                    
                     child: SignUpModalButtomSheet());
                    }
                  );
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(children: [
                        TextSpan(text: "Don’t have an account? "),
                        TextSpan(
                          text: "Register",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ])),
                ),
              ),
                   const SizedBox(
                  height: 16,
                ),
            ],
          ),
        ),
    );
  }
}