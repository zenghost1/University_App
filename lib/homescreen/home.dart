import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nsutxapp/pages/attendance.dart';
import 'package:nsutxapp/pages/homepage.dart';
import 'package:nsutxapp/pages/notices.dart';
import 'package:nsutxapp/pages/timetable.dart';
import 'package:nsutxapp/pages/to_do.dart';
import 'package:nsutxapp/widgets/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const TimeTable(),
    const Attendance(),
    const Home(),
    const Notices(),
    const RegisteredCoursesPage(),
  ];

  // Widget Drawer(){

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text(
          '      N S U T X',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 45,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.person_sharp),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF05050C),
      bottomNavigationBar: Container(
        color: const Color(0xFF05050C),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              selectedIndex: _selectedIndex,
              onTabChange: _navigateBottomBar,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 8,
              padding: const EdgeInsets.all(16),
              textStyle: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 18,
              )),
              tabs: const [
                GButton(
                  icon: Icons.timer_rounded,
                  text: 'Time-Table',
                ),
                GButton(
                  icon: Icons.personal_injury_rounded,
                  text: 'Attendance',
                ),
                GButton(
                  icon: Icons.home_filled,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.notifications_active_rounded,
                  text: 'Notices',
                ),
                GButton(
                  icon: Icons.book,
                  text: 'Courses',
                ),
              ]),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -50,
            left: -100,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(202, 25, 212, 254),
                borderRadius: BorderRadius.all(
                  Radius.circular(150),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: -50,
            child: Container(
              width: 150,
              height: 350,
              decoration: const BoxDecoration(
                color: Color.fromARGB(60, 65, 255, 151),
                borderRadius: BorderRadius.all(
                  Radius.circular(150),
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: -100,
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                color: Color.fromARGB(62, 165, 69, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(150),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: -10,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(113, 245, 29, 29),
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
            ),
          ),
          Positioned(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 80,
                sigmaY: 80,
              ),
              child: Container(),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: _pages[_selectedIndex]),
          ),
        ],
      ),
    );
  }
}
