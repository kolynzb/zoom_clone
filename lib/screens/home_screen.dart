import 'package:flutter/material.dart';
import 'package:zoom/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: footerColor,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.comment_bank), label: "Meet & Chat"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.lock_clock), label: "Meeting"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Contact"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: "Settings"),
            ]));
  }
}
