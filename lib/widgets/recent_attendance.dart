import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nsutxapp/widgets/constants.dart';
// import 'package:nsutxapp/models/alert.dart';
import 'package:nsutxapp/widgets/countdown_painter.dart';

class Alert {
  final String title;
  final String subject;
  final String time;

  Alert({required this.title, required this.subject, required this.time});
}

List<Alert> attnList = [
  Alert(
    title: "Web Technology",
    subject: "CDCSC05",
    time: "Chill , you are in\nthe safe Zone",
  ),
  Alert(
    title: "Design and Analysis\nof Algorithms",
    subject: "CDCSC06",
    time: "You gotta attend\nmore classes",
  ),
  Alert(
    title: "Computer Architecture",
    subject: "CDCSC07",
    time: "You gotta end attend\nmore Classes",
  ),
  Alert(
    title: "Microprocessor and\nMicrocontroller",
    subject: "CDCSC08",
    time: "Chill, you are in\nthe safe Zone",
  ),
  Alert(
    title: "Database Management",
    subject: "CDCSC08",
    time: "Chill, you are in\nthe safe Zone",
  ),
];

class RecentsAttendance extends StatelessWidget {
  final DateFormat dateFormat = DateFormat("hh:mm a");

  RecentsAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: attnList.length,
      itemBuilder: (BuildContext context, int index) {
        Alert alert = attnList[index];
        List<double> hoursLeft = [79, 69, 42.0, 99.99, 100];
        var hoursLeft_ = hoursLeft[index];
        double percent = hoursLeft_ / 100;

        return Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              height: 130.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              height: 140.0,
              width: 326.0,
              decoration: const BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        alert.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.circle_notifications,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 17.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            "${attnList[index].time}",
                            style: const TextStyle(
                              color: kTextColor,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.receipt,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 17.0,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            alert.subject,
                            style: const TextStyle(
                              color: kTextColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0.0,
                    child: CustomPaint(
                      foregroundPainter: CountdownPainter(
                        bgColor: kBGColor,
                        lineColor: _getColor(context, percent),
                        percent: percent,
                        width: 4.0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "$hoursLeft_",
                                style: TextStyle(
                                  color: _getColor(context, percent),
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            // Text(
                            //   "hours left",
                            //   style: TextStyle(
                            //     color: _getColor(context, percent),
                            //     fontSize: 13.0,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  _getColor(BuildContext context, double percent) {
    if (percent >= 0.4) {
      return Theme.of(context).colorScheme.secondary;
    }

    return kHourColor;
  }
}
