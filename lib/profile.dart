import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Padding(
              padding: EdgeInsets.only(left: 35, top: 20),
              child: Text('Profile',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontFamily: 'Lato-Bold',
                      fontWeight: FontWeight.bold)),
            )));
  }
}
