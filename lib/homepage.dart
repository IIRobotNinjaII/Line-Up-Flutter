import 'package:flutter/material.dart';
import 'sport_icons_icons.dart' show SportIcons;
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int buttonSelected = 3;
  int val = 0;
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 35, top: 20),
            child: Text('Home',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontFamily: 'Lato-Bold',
                    fontWeight: FontWeight.bold)),
          )),
      body: ListView(
        children: [
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
          SizedBox(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            val = index;
                          });
                        },
                        child: Container(
                            width: 70,
                            height: 50,
                            decoration: BoxDecoration(
                                color: val == index
                                    ? Colors.red
                                    : const Color(0xFFF3F3F3)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    DateFormat('dd')
                                        .format(now.add(Duration(days: index))),
                                    style: TextStyle(
                                        color: val == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Lato-Bold',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                      DateFormat('EEEE').format(
                                          now.add(Duration(days: index))),
                                      style: TextStyle(
                                          color: val == index
                                              ? Colors.white
                                              : const Color(0xFF575757),
                                          fontSize: 10,
                                          fontFamily: 'Lato')),
                                )
                              ],
                            )));
                  })),
          const SizedBox(height: 10),
          SizedBox(
            height: 600,
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                const SizedBox(height: 10),
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200)),
                  child: Row(
                    children: [
                      Container(
                        height: 130,
                        width: 95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/tennis.png"))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Badminton",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Lato-Bold',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "10/12",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Lato-Bold',
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            const Text(
                              "Spots Available",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Lato-Bold',
                                color: Color(0xFF777777),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color(0xFF8D8D8D),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "Dubai Sports District",
                                        style: TextStyle(
                                            color: Color(0xFFFF8D94),
                                            fontFamily: 'Lato',
                                            fontSize: 10),
                                      ),
                                      Text(
                                        "12 Km",
                                        style: TextStyle(
                                            color: Color(0xFFFF8D94),
                                            fontFamily: 'Lato',
                                            fontSize: 8),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 28, top: 5, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Saturday",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 9,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const Text(
                              "13 Feb",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "20:00",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 13,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: const Text(
                                  "Join Now",
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200)),
                  child: Row(
                    children: [
                      Container(
                        height: 130,
                        width: 95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/padel.png"))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Padel Tennis",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Lato-Bold',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "2/5",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Lato-Bold',
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            const Text(
                              "Spots Available",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Lato-Bold',
                                color: Color(0xFF777777),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color(0xFF8D8D8D),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "Dubai Sports District",
                                        style: TextStyle(
                                            color: Color(0xFFFF8D94),
                                            fontFamily: 'Lato',
                                            fontSize: 10),
                                      ),
                                      Text(
                                        "12 Km",
                                        style: TextStyle(
                                            color: Color(0xFFFF8D94),
                                            fontFamily: 'Lato',
                                            fontSize: 8),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 28, top: 5, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Saturday",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 9,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const Text(
                              "13 Feb",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "20:00",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 13,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: const Text(
                                  "Join Now",
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200)),
                  child: Row(
                    children: [
                      Container(
                        height: 130,
                        width: 95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/football.png"))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Football",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Lato-Bold',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "2/10",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Lato-Bold',
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            const Text(
                              "Spots Available",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Lato-Bold',
                                color: Color(0xFF777777),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color(0xFF8D8D8D),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "Dubai Sports District",
                                        style: TextStyle(
                                            color: Color(0xFFFF8D94),
                                            fontFamily: 'Lato',
                                            fontSize: 10),
                                      ),
                                      Text(
                                        "12 Km",
                                        style: TextStyle(
                                            color: Color(0xFFFF8D94),
                                            fontFamily: 'Lato',
                                            fontSize: 8),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 28, top: 5, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Saturday",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 9,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const Text(
                              "13 Feb",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "20:00",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 13,
                                color: Color(0xFF464646),
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: const Text(
                                  "Join Now",
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
