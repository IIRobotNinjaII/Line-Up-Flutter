import 'package:flutter/material.dart';
import 'sport_icons_icons.dart' show SportIcons;

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});
  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  int buttonSelected = 3;
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Padding(
              padding: EdgeInsets.only(left: 35, top: 20),
              child: Text('Leaderboard',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontFamily: 'Lato-Bold',
                      fontWeight: FontWeight.bold)),
            )),
        body: ListView(children: [
          const SizedBox(height: 20),
          ButtonBar(
              alignment: MainAxisAlignment.start,
              buttonPadding: const EdgeInsets.all(3),
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      buttonSelected = 1;
                    });
                  },
                  iconSize: 21,
                  padding: const EdgeInsets.all(15),
                  color: buttonSelected == 1 ? Colors.white : Colors.grey,
                  icon: const Icon(SportIcons.tennis),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          buttonSelected == 1 ? Colors.red : Colors.white,
                      side: const BorderSide(color: Color(0xFFD4D4D4))),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      buttonSelected = 2;
                    });
                  },
                  iconSize: 21,
                  padding: const EdgeInsets.all(15),
                  color: buttonSelected == 2 ? Colors.white : Colors.grey,
                  icon: const Icon(SportIcons.basketball),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          buttonSelected == 2 ? Colors.red : Colors.white,
                      side: const BorderSide(color: Color(0xFFD4D4D4))),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      buttonSelected = 3;
                    });
                  },
                  iconSize: 21,
                  padding: const EdgeInsets.all(15),
                  color: buttonSelected == 3 ? Colors.white : Colors.grey,
                  icon: const Icon(SportIcons.squash),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          buttonSelected == 3 ? Colors.red : Colors.white,
                      side: const BorderSide(color: Color(0xFFD4D4D4))),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      buttonSelected = 4;
                    });
                  },
                  iconSize: 21,
                  padding: const EdgeInsets.all(15),
                  color: buttonSelected == 4 ? Colors.white : Colors.grey,
                  icon: const Icon(SportIcons.volleyball),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          buttonSelected == 4 ? Colors.red : Colors.white,
                      side: const BorderSide(color: Color(0xFFD4D4D4))),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      buttonSelected = 5;
                    });
                  },
                  iconSize: 21,
                  padding: const EdgeInsets.all(15),
                  color: buttonSelected == 5 ? Colors.white : Colors.grey,
                  icon: const Icon(SportIcons.cricket),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          buttonSelected == 5 ? Colors.red : Colors.white,
                      side: const BorderSide(color: Color(0xFFD4D4D4))),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      buttonSelected = 6;
                    });
                  },
                  iconSize: 21,
                  padding: const EdgeInsets.all(15),
                  color: buttonSelected == 6 ? Colors.white : Colors.grey,
                  icon: const Icon(SportIcons.football),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          buttonSelected == 6 ? Colors.red : Colors.white,
                      side: const BorderSide(color: Color(0xFFD4D4D4))),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      buttonSelected = 7;
                    });
                  },
                  iconSize: 21,
                  padding: const EdgeInsets.all(15),
                  color: buttonSelected == 7 ? Colors.white : Colors.grey,
                  icon: const Icon(SportIcons.badmiton),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          buttonSelected == 7 ? Colors.red : Colors.white,
                      side: const BorderSide(color: Color(0xFFD4D4D4))),
                ),
              ]),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade200)),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          val = 0;
                        });
                      },
                      child: Container(
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: val == 0 ? Colors.red : Colors.white),
                          child: Center(
                            child: Text("Weekly",
                                style: TextStyle(
                                  color: val == 0 ? Colors.white : Colors.black,
                                  fontFamily: 'Lato',
                                )),
                          ))),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          val = 1;
                        });
                      },
                      child: Container(
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: val == 1 ? Colors.red : Colors.white),
                          child: Center(
                            child: Text("Monthly",
                                style: TextStyle(
                                  color: val == 1 ? Colors.white : Colors.black,
                                  fontFamily: 'Lato',
                                )),
                          ))),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          val = 2;
                        });
                      },
                      child: Container(
                          width: 106,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: val == 2 ? Colors.red : Colors.white),
                          child: Center(
                            child: Text("Yearly",
                                style: TextStyle(
                                  color: val == 2 ? Colors.white : Colors.black,
                                  fontFamily: 'Lato',
                                )),
                          ))),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 80, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.chevron_left,
                  color: Color(0xFFEB616B),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 64.0, right: 64),
                  child: Text("Feb",
                      style: TextStyle(
                          color: Color(0xFFEB616B),
                          fontSize: 18,
                          fontFamily: 'Lato-Bold',
                          fontWeight: FontWeight.bold)),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Color(0XFFEB616B),
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade200)),
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 10,
                    );
                  },
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: const [
                                SizedBox(width: 20),
                                Text("#",
                                    style: TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 13,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 65),
                                Text("Name",
                                    style: TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 13,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 40),
                                Text("PI",
                                    style: TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 13,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 15),
                                Text("W",
                                    style: TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 13,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 20),
                                Text("A",
                                    style: TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 13,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 20),
                                Text("G",
                                    style: TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 13,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 20),
                                Text("DF",
                                    style: TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 13,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 10),
                                Text("MVP",
                                    style: TextStyle(
                                        color: Color(0xFF7D7D7D),
                                        fontSize: 13,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(index < 10 ? "0$index" : "$index",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                const Icon(
                                  Icons.account_circle,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                                Text(
                                    index < 10
                                        ? "Person 0$index"
                                        : "Person $index",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                const Text("5",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                const Text("2",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                const Text("8",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                const Text("15",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                const Text("2",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                                const Text("0",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          );
                  }),
            ),
          )
        ]));
  }
}
