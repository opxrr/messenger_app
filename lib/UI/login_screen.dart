import 'package:flutter/material.dart';
import 'package:messenger_app/CustomWidgets/custom_text_form_field.dart';
import 'package:messenger_app/UI/chat_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Image.asset(
              'assets/images/messenger_splash.png',
              width: 120,
              height: 120,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 200,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const CustomTextFormField(
                      hintName: 'Phone number or email address',
                      isPassword: false,
                      keyboardType: TextInputType.text),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextFormField(
                      hintName: 'Password',
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide.none)),
                          backgroundColor: const MaterialStatePropertyAll(
                              Colors.blueAccent),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, ChatScreen.routeName);
                        },
                        child: const Text(
                          'LogIn',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const Text('Forgotten Password ?')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
