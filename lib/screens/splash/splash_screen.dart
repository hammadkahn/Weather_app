import 'dart:async';

import 'package:app/app/size_config.dart';
import 'package:app/screens/landing/landing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Landing())));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/splash.png')),
            const Padding(
              padding: EdgeInsets.only(bottom: 61),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Powered By Tech Idara",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            )
          ],
        ),
      ),
    );
  }
}
