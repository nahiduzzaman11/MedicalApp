import 'package:flutter/material.dart';
import 'package:medical_app/screens/home.dart';
import 'package:medical_app/screens/messages.dart';
import 'package:medical_app/screens/profile_page.dart';
import 'package:medical_app/screens/schedule.dart';
import 'package:medical_app/screens/search_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  int currentIndex = 0;
  /// widget list
  final List<Widget> pages = [
    const HomePage(),
    const Schedule(),
    const SearchPage(),
    const Messages(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey[700],
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.schedule_outlined),label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.sms_rounded),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}