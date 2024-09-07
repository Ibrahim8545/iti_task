import 'package:flutter/material.dart';
import 'package:loginscreen/widget/custom_text_field.dart';

class SignUpModalButtomSheet extends StatelessWidget {
  const SignUpModalButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25,left: 16,right: 17),
       decoration:const BoxDecoration(
          color: Color(0xffffecaa),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child:   Column(
   
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
      
            children: [
              const Column(
                
                children: [
                  Text('Hello...',style: TextStyle(fontSize: 20),),
                  Text('Register',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                  )
                ],
              ),
              Spacer(),
              Image.asset('assets/images/Vector.png')

            ],
          ),
         const SizedBox(height: 15,),
         CustomTextFormFiled(
          labelText: 'email',
          validatorText: 'Email must be not empty',
          obText: false,
          icon: (Icons.remove_red_eye_outlined),
          ),
          const SizedBox(height: 8,),
               CustomTextFormFiled(
          labelText: 'course',
          validatorText: 'course must be not empty',
          obText: false,
          icon: (Icons.remove_red_eye_outlined),
          ),
          const SizedBox(height: 8,),
               CustomTextFormFiled(
          labelText: 'password',
          validatorText: 'password must be not empty',
          obText: false,
          icon: (Icons.remove_red_eye_outlined),
          ),
          const SizedBox(height: 8,),
               CustomTextFormFiled(
          labelText: 'confirm password',
          validatorText: 'password must be not empty',
          obText: false,
          icon: (Icons.remove_red_eye_outlined),
          ),
          
        ],
      ),
    );
  }
}