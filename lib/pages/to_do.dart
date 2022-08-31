import 'package:flutter/material.dart';

class ToDO extends StatelessWidget {
  const ToDO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'TODO',
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
