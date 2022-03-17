import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

class WelcomeScreen extends StatelessWidget {
  final Widget navigationPage;
  final int duration;

  const WelcomeScreen({
    Key key,
    this.duration,
    this.navigationPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Page navigation
    Future.delayed(Duration(seconds: duration), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => navigationPage),
        (route) => false,
      );
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/link_up_logo.png',
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Earn Your Job Today",
                style: TextStyle(
                  fontFamily: fontFamilyRobotoRegular,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(colorPrimaryDark),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
