import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final divider = Divider(color: Colors.white.withOpacity(0.3), height: 1);
    return SidebarX(
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.45),
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black.withOpacity(0.45)),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.white30,
          ),
          gradient: LinearGradient(
            colors: [Colors.blue.withOpacity(0.45), Colors.black],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.45),
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return Column(
          children: const [
            SizedBox(
              height: 200,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 2.0,
                ),
                child: Text(
                  '  Sara jones ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
      controller: SidebarXController(selectedIndex: 0, extended: true),
      items: const [
        SidebarXItem(icon: Icons.person, label: 'Profile'),
        SidebarXItem(icon: Icons.check, label: 'Attendance'),
        SidebarXItem(icon: Icons.timeline, label: 'Time table'),
        SidebarXItem(icon: Icons.checklist, label: 'TO DO'),
        SidebarXItem(icon: Icons.bookmark, label: 'Notices'),
        SidebarXItem(icon: Icons.book, label: 'Syllabus'),
        SidebarXItem(icon: Icons.school, label: 'PYQs'),
        SidebarXItem(icon: Icons.menu_book, label: 'Courses'),
        SidebarXItem(icon: Icons.menu_open_rounded, label: 'Results.. scary'),
        SidebarXItem(icon: Icons.build, label: 'Socities'),
        SidebarXItem(icon: Icons.account_tree, label: 'Events'),
        SidebarXItem(icon: Icons.adobe_outlined, label: 'Abouts Us'),
        SidebarXItem(icon: Icons.question_answer, label: 'FAQs'),
      ],
    );
  }
}
