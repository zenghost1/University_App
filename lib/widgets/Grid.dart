import 'package:flutter/material.dart';
import 'package:nsutxapp/widgets/recent_homework.dart';
import 'package:nsutxapp/widgets/underwork.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:nsutxapp/widgets/Icons.dart';

class Homegrid extends StatelessWidget {
  launch(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw "Could Not Launch $url";
    }
  }

  const Homegrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.all(10),
          // height: 258,
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            // border: Border.all(color: Colors.grey.shade500),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.account_circle,
                        title: "My Profile"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.check,
                        title: "Attendance"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.check_box,
                        title: "ToDo"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.access_time,
                        title: "TimeTable"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.school,
                        title: "Syllabus"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.account_circle,
                        title: "PYQs"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.bar_chart,
                        title: "Result"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.menu_book,
                        title: "Courses"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.pages,
                        title: "Societies"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Iconcard(
                        pageRoute: Underwork(),
                        icondata: Icons.upcoming_outlined,
                        title: "Events"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            // backgroundColor: Colors.blueAccent.withOpacity(0.6),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(232, 64, 173, 241),
                                // gradient: LinearGradient(
                                //   colors: [
                                //     Colors.blue.withOpacity(0.9),
                                //     Colors.white.withOpacity(0.5)
                                //   ],
                                // ),
                              ),
                              child: IconButton(
                                iconSize: 30,
                                icon: const Icon(Icons.web),
                                onPressed: () {
                                  String url =
                                      "https://www.imsnsit.org/imsnsit/notifications.php";
                                  launch(url);
                                },
                              ),
                            ),
                          ),
                          const Text(
                            "Notices",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
