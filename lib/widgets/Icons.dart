import 'package:flutter/material.dart';

class Iconcard extends StatelessWidget {
  final Widget pageRoute;
  final IconData icondata;
  final String title;
  const Iconcard(
      {Key? key,
      required this.pageRoute,
      required this.icondata,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            // backgroundColor: Colors.blueAccent.withOpacity(0.6),
            child: Container(
              // padding: EdgeInsets.all(15),
              decoration: const BoxDecoration(
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
                icon: Icon(icondata),
                iconSize: 30,
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return pageRoute;
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
