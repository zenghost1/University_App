import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Notices extends StatelessWidget {
  launch(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw "Could Not Launch $url";
    }
  }

  const Notices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 350.0,
      ),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              String url = "https://www.imsnsit.org/imsnsit/notifications.php";
              launch(url);
            },
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(41, 160, 136, 164),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            child: const Text('Click here to visit IMS'),
          ),
          // ElevatedButton(
          //   child: Text(
          //     "Click here to visit IMS",
          //     style: TextStyle(backgroundColor: Colors.white),
          //   ),
          //   // icon: const Icon(Icons.web),
          //   onPressed: () {
          //     String url = "https://www.imsnsit.org/imsnsit/notifications.php";
          //     launch(url);
          //   },
          // ),
          // const Text("Notices")
        ],
      ),
    );
  }
}
