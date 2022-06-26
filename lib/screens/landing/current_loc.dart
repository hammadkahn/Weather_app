import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';

import '../../app/size_config.dart';
import '../../services/geo_locator.dart';
import '../city/curent_loc_Details.dart';

class Current_loc extends StatefulWidget {
  Current_loc({Key? key}) : super(key: key);

  @override
  State<Current_loc> createState() => _Current_locState();
}

class _Current_locState extends State<Current_loc> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 21, left: 22, top: 18),
      child: GestureDetector(
        onTap: () async {
          Position location = await determinePosition();
          print(location);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => City_select(
                loc: location.toString(),
              ),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 72,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFF1F1F1)),
          child: Padding(
            padding: EdgeInsets.only(right: 31, left: 20),
            child: Row(
              children: [
                Text(
                  'Select Current Location',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
