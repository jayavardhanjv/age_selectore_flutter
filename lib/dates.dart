import 'package:flutter/material.dart';

class MyDates extends StatelessWidget {
  int mins;

  MyDates({required this.mins});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          mins.toString(),
          style: TextStyle(
              fontSize: 55, color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
