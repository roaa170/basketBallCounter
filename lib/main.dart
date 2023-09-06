import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key});
  int teamAPonints = 0;
  int teamBPonints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Counter"),
        ),
        body: Column(
          children: [
            // the above part (Row of 2 columns)
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // the left side:-
                Column(
                  children: [
                    Text(
                      "Team A ",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$teamAPonints",
                      style: TextStyle(fontSize: 160),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(100, 50)),
                        onPressed: () {
                          teamAPonints += 1;
                          setState(() {});
                          print("added $teamAPonints");
                        },
                        child: const Text("Add 1 point",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(100, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPonints += 2;
                          });
                        },
                        child: const Text("Add 2 point",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(100, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPonints += 3;
                          });
                        },
                        child: const Text("Add 3 point",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),

                // the right side
                Column(
                  children: [
                    Text(
                      "Team B ", // Fixed team name
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$teamBPonints",
                      style: TextStyle(fontSize: 160),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(100, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPonints++;
                          });
                        },
                        child: const Text("Add 1 point",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(100, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPonints += 2;
                          });
                        },
                        child: const Text("Add 2 point",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(100, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPonints += 3;
                          });
                        },
                        child: const Text("Add 3 point",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, minimumSize: Size(100, 50)),
                onPressed: () {
                  setState(() {
                    teamBPonints = 0;
                    teamAPonints = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
