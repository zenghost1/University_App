import 'package:flutter/material.dart';
import 'package:nsutxapp/widgets/recent_attendance.dart';

import '../widgets/recent_alerts.dart';
import '../widgets/recent_homework.dart';

class Attendance extends StatelessWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var recentsAttendance = RecentsAttendance;
    return ListView(
      children: <Widget>[
        const SizedBox(height: 30.0),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Attendance status",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              RecentsAttendance(),
              Center(
                child: Text(
                  "Enjoy And Forget",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0),
              // const Text(
              //   "Recent Homework",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // const SizedBox(height: 30.0),
              // const RecentHomeworks(),
              // Center(
              //   child: Text(
              //     "View all",
              //     style: TextStyle(
              //         color: Theme.of(context).colorScheme.secondary,
              //         fontSize: 15.0),
              //   ),
              // ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ],
    );
  }
}
