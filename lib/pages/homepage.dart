import 'package:flutter/material.dart';
import 'package:nsutxapp/widgets/Grid.dart';
import '../widgets/recent_alerts.dart';
import '../widgets/recent_homework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(height: 30.0),
        // Card(
        //   color: Colors.black,
        //   shadowColor: Colors.transparent,
        //   margin: const EdgeInsets.all(28),
        //   // elevation: 8,
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        //   child: Homegrid(),
        // ),
        Container(
          padding: const EdgeInsets.only(left: 5.0, right: 20.0),
          decoration: BoxDecoration(
            // boxShadow: [BoxShadow(blurRadius: 1, color: Colors.white70)],
            color: const Color(0xFF282B30).withOpacity(0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: const Homegrid(),
        ),
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
                "Recent Alerts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              RecentsAlerts(),
              Center(
                child: Text(
                  "View all",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 15.0),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Recent Homework",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              const RecentHomeworks(),
              Center(
                child: Text(
                  "View all",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 15.0),
                ),
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ],
    );
  }
}
