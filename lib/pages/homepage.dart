import 'package:flutter/material.dart';
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
        // const Header(),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
        //   child: TextField(
        //     style: const TextStyle(color: kTextColor),
        //     cursorColor: kTextColor,
        //     decoration: InputDecoration(
        //       contentPadding: const EdgeInsets.all(8.0),
        //       border: InputBorder.none,
        //       fillColor: Theme.of(context).primaryColor,
        //       filled: true,
        //       hintText: "Search",
        //       hintStyle: const TextStyle(color: kTextColor),
        //       prefixIcon:
        //           const Icon(Icons.search, color: kTextColor, size: 26.0),
        //       enabledBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(30.0),
        //       ),
        //     ),
        //   ),
        // ),
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
