import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Padding(
              padding: EdgeInsets.only(left: 35, top: 20),
              child: Text('Activities',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontFamily: 'Lato-Bold',
                      fontWeight: FontWeight.bold)),
            )));
  }
}
