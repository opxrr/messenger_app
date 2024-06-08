import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:messenger_app/UI/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/messenger_splash.png',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            const SpinKitThreeBounce(
              color: Colors.blue,  // You can change the color as needed
              size: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
