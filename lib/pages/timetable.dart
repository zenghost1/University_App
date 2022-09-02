import 'package:flutter/material.dart';

import '../widgets/constants.dart';
import 'package:nsutxapp/widgets/buildclasses.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // const Header(),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Jun",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("01", style: kCalendarDay),
                  const Text("02", style: kCalendarDay),
                  const Text("03", style: kCalendarDay),
                  Text(
                    "04",
                    style: kCalendarDay.copyWith(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text("05", style: kCalendarDay),
                  const Text("06", style: kCalendarDay),
                  const Text("07", style: kCalendarDay),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 157.0, top: 3.0),
                child: Text(
                  "THU",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(40.0),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              BuildClasses(),
            ],
          ),
        ),
      ],
    );
  }
}
