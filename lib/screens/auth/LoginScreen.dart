import 'package:flutter/material.dart';
import 'package:zoom/controllers/auth_controller.dart';
import 'package:zoom/screens/home_screen.dart';
import 'package:zoom/screens/widget/custom_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final AuthController _authcontroller = AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Start to join meeting",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/onboarding.png',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: CustomButton(
                  text: 'Login',
                  onPressed: () {
                    _authcontroller.signInWithGoogle();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> const HomeScreen()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
