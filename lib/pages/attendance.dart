import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'AT',
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
