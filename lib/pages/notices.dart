import 'package:flutter/material.dart';

class Notices extends StatelessWidget {
  const Notices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '   Notices \n ims.nsit.org',
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
