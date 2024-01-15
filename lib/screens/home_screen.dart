import 'package:flutter/material.dart';
import 'package:zoom_meet/resources/auth_methods.dart';
import 'package:zoom_meet/screens/history_meeting_screen.dart';
import 'package:zoom_meet/screens/meeting_screen.dart';
import 'package:zoom_meet/utils/colors.dart';
import 'package:zoom_meet/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    MeetingScreen(),
    const HistoryMeetingScreen(),
    const Text('Contacts'),
    CustomButton(text: 'Log Out', onPressed: () => AuthMethods().logOut()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: const Text('Meet & Chat'),
      ),
      body: pages[_page],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: onPageChanged,
          currentIndex: _page,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.comment,
              ),
              label: 'Meet & Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.lock_clock,
              ),
              label: 'Meetings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
