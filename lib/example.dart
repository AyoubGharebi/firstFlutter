import 'package:flutter/material.dart';

class MyAppp extends StatefulWidget {
  const MyAppp({super.key});

  @override
  State<MyAppp> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppp> {
  int i = 0;
  bool state = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {});
              state = true;
              print("flotbutton $i");
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Title"),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black, width: 2)),
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  width: 1000,
                  child: Text("ayoub ghareeby",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.grey[800])),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black, width: 2)),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 10),
                  width: 10000,
                  child: Text(
                      " Desktop dart flutter potato lib main.dart Pbase-application-name=android.app.Application -Pdart-obfuscation=false -Ptrack-widget-creation=true -Ptree-shake-icons=false  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.grey[700])),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.black, width: 2)),
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(10),
                    width: 1000,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          ),
                          Text("170 Reviews")
                        ])),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black, width: 2)),
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  width: 1000,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Text(
                            "PRPE:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]),
                          ),
                          Text("25 min")
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.alarm,
                            color: Colors.green,
                          ),
                          Text(
                            "cook:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]),
                          ),
                          Text("1h $i")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.restaurant,
                            color: Colors.green,
                          ),
                          Text(
                            "FEEDS:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]),
                          ),
                          Text("4-6")
                        ],
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  color: Colors.green[300],
                  textColor: Colors.white,
                  onLongPress: () => print("long"),
                  onPressed: () {
                    setState(() {});
                    state = false;
                    i--;
                    print("button ok is ok");
                  },
                  child: Text("click OK"),
                ),
                state ? Icon(Icons.star) : Icon(Icons.star_border_outlined)
              ],
            ),
          )),
    );
  }
}
