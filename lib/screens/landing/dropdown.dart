
import 'package:app/city/city_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 21, left: 22, top: 18),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => City_select(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 72,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF6DC9EF)),
          child: Row(
            children: [
              Text(
                'Select City',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Image.asset('assets/images/drop.png', height: 9, width: 16)
            ],
          ),
        ),
      ),
    );
  }
}
