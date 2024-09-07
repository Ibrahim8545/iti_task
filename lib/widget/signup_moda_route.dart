import 'package:flutter/material.dart';
import 'package:loginscreen/widget/custom_button.dart';
import 'package:loginscreen/widget/custom_text_field.dart';
import 'package:loginscreen/widget/login_modal_route.dart';

class SignUpModalButtomSheet extends StatefulWidget {
  SignUpModalButtomSheet({super.key});

  static const String routenName = 'sjhbdf';

  @override
  State<SignUpModalButtomSheet> createState() => _SignUpModalButtomSheetState();
}

class _SignUpModalButtomSheetState extends State<SignUpModalButtomSheet> {
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Container(
          padding: EdgeInsets.only(top: 25, left: 16, right: 17),
          decoration: const BoxDecoration(
            color: Color(0xffffecaa),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello...',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Spacer(),
                  Image.asset('assets/images/Vector.png')
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormFiled(
                labelText: 'email',
                controller: emailController,
                validatorText: 'Email must be not empty',
                obscureText: false,
                icon: (Icons.remove_red_eye_outlined),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormFiled(
                labelText: 'course',
                validatorText: 'course must be not empty',
                obscureText: false,
                icon: (Icons.remove_red_eye_outlined),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormFiled(
                labelText: 'password',
                validatorText: 'password must be not empty',
                obscureText: false,
                controller: passwordController,
                icon: (Icons.remove_red_eye_outlined),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormFiled(
                labelText: 'confirm password',
                validatorText: 'password must be not empty',
                icon: (Icons.remove_red_eye_outlined),
                obscureText: false,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomButttom(
                text: 'Register',
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
              const SizedBox(
                height: 8,
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
                    
                    
                     child: LoginModalButtomSheet());
                    }
                  );
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(children: [
                        TextSpan(text: "I have an Account? "),
                        TextSpan(
                          text: "Login",
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
      ),
    );
  }
}
