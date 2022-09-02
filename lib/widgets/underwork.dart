import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Underwork extends StatelessWidget {
  const Underwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text("A man can do so much",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
      ),
    );
  }
}
