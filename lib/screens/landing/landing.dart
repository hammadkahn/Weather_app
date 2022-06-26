import 'package:app/screens/landing/landing_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../app/size_config.dart';
import 'current_loc.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 68),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Landing_text(),
          Image.asset(
            'assets/images/landing.png',
            // height: 400,
            // width: SizeConfig.screenWidth,
          ),
          Spacer(),
          Current_loc(),
          
          SizedBox(height: 53)
        ],
      ),
    ));
  }
}
