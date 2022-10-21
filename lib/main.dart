import 'package:flutter/material.dart';
import 'package:lineup/activities.dart';
import 'package:lineup/leaderboard.dart';
import 'package:lineup/profile.dart';
import 'package:lineup/homepage.dart';
import 'nav_bar_icons.dart' show NavBar;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LineUp",
      home: const MainPage(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const Leaderboard(),
    const Activities(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        currentIndex: currentIndex,
        backgroundColor: const Color(0xFFF5F5F5),
        iconSize: 22,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(NavBar.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(NavBar.trophy),
            label: 'Leaderboards',
          ),
          BottomNavigationBarItem(
            icon: Icon(NavBar.ball),
            label: 'Activities',
          ),
          BottomNavigationBarItem(
            icon: Icon(NavBar.profile),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
