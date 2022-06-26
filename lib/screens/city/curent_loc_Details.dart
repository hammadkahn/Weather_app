import 'package:app/model/weather_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class City_select extends StatelessWidget {
  const City_select({Key? key, required this.loc}) : super(key: key);

  final String loc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(loc)),
    );
  }
}
