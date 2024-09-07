import 'package:flutter/material.dart';
import 'package:loginscreen/widget/custom_button.dart';
import 'package:loginscreen/widget/login_modal_route.dart';
import 'package:loginscreen/widget/signup_moda_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/bacgroundhome.jpeg',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 36,
                color: Color(0xffEF5858),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                'Lorem ipsum dolor sit amet,consectetur adipiscing elit,  sed do eiusmod',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButttom(
                text: 'Login',
                color: Colors.amber,
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return LoginModalButtomSheet();
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButttom(
                text: ('Sign up'),
                textStyle: TextStyle(color: Colors.amber),
                onTap: () {
                  showModalBottomSheet(
                     backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return SignUpModalButtomSheet();
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
