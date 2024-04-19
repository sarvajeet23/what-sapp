import 'package:flutter/material.dart';
import 'package:test9/modules/pages/calls/call.dart';
import 'package:test9/modules/pages/chat/chat.dart';
import 'package:test9/modules/pages/communities/communiction.dart';
import 'package:test9/modules/pages/update/update.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  List pages = const [
    Chart(),
    Update(),
    Communication(),
    Call(),
  ];

  void onchange(index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onchange,
          elevation: 20,
          selectedItemColor: Colors.green[900],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          useLegacyColorScheme: true,
          currentIndex: current,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontSize: 18),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.update_outlined), label: "Updates"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add_outlined), label: "Communities"),
            BottomNavigationBarItem(
                icon: Icon(Icons.call_outlined), label: "Call"),
          ]),
    );
  }
}
