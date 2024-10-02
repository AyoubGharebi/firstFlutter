import 'package:flutter/material.dart';
import 'package:potato/example.dart';

void main() {
  runApp(MyAppp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List employee = [
    {"name": "ayoub", "age": 12, "lastname": "ghareeby"},
    {"name": "sara", "age": 12, "lastname": "ghareeby"},
    {"name": "samy", "age": 12, "lastname": "ghareeby"},
    {"name": "fayz", "age": 12, "lastname": "ghareeby"}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Title"),
          ),
          body: Container(
            child: card(context),
          )),
    );
  }

  ListView card(BuildContext context) {
    return ListView(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            isThreeLine: true,
            leading: Text("1"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyAppp(),
              ));
            },
            title: Text(
              "ayoub",
            ),
            subtitle: Text("age:14"),
            trailing: Text("2022"),
          ),
        ),
        Card(
          child: ListTile(
            leading: Text("2"),
            onTap: () {
              print("prony is 2");
            },
            title: Text(
              "sara",
            ),
            subtitle: Text("age:24"),
            trailing: Text("2018"),
          ),
        ),
        Card(
          child: ListTile(
            leading: Text("3"),
            onTap: () {
              print("print is 3");
            },
            title: Text(
              "samy",
            ),
            subtitle: Text("age:34"),
            trailing: Text("2012"),
          ),
        ),
      ],
    );
  }

  GridView GridCount() {
    return GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 3,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10,
      childAspectRatio: 2,
      children: [
        Container(
          child: Text("one"),
          color: Colors.red,
        ),
        Container(
          child: Text("two"),
          color: Colors.blue,
        ),
        Container(
          child: Text("three"),
          color: Colors.yellow,
        ),
        Container(
          child: Text("four"),
          color: Colors.greenAccent,
        ),
        Container(
          child: Text("five"),
          color: Colors.black,
        ),
        Container(
          child: Text("six"),
          color: Colors.grey,
        ),
        Container(
          child: Text("seven"),
          color: Colors.orange,
        ),
        Container(
          child: Text("eight"),
          color: Colors.red,
        ),
        Container(
          child: Text("nine"),
          color: Colors.blue,
        ),
        Container(
          child: Text("one"),
          color: Colors.red,
        ),
        Container(
          child: Text("two"),
          color: Colors.blue,
        ),
        Container(
          child: Text("three"),
          color: Colors.yellow,
        ),
        Container(
          child: Text("four"),
          color: Colors.greenAccent,
        ),
        Container(
          child: Text("five"),
          color: Colors.black,
        ),
        Container(
          child: Text("six"),
          color: Colors.grey,
        ),
        Container(
          child: Text("seven"),
          color: Colors.orange,
        ),
        Container(
          child: Text("eight"),
          color: Colors.red,
        ),
        Container(
          child: Text("nine"),
          color: Colors.blue,
        ),
        Container(
          child: Text("one"),
          color: Colors.red,
        ),
        Container(
          child: Text("two"),
          color: Colors.blue,
        ),
        Container(
          child: Text("three"),
          color: Colors.yellow,
        ),
        Container(
          child: Text("four"),
          color: Colors.greenAccent,
        ),
        Container(
          child: Text("five"),
          color: Colors.black,
        ),
        Container(
          child: Text("six"),
          color: Colors.grey,
        ),
        Container(
          child: Text("seven"),
          color: Colors.orange,
        ),
        Container(
          child: Text("eight"),
          color: Colors.red,
        ),
        Container(
          child: Text("nine"),
          color: Colors.blue,
        ),
      ],
    );
  }

  GridView GridViewBuilder() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, childAspectRatio: 2),
        itemCount: 100,
        itemBuilder: (context, i) => Container(
              color: i.isEven ? Colors.red : Colors.blue,
              height: 100,
              child: Text(
                  style: TextStyle(fontSize: 40.5),
                  textAlign: TextAlign.center,
                  "$i"),
            ));
  }
}

// example for listview.builder
class listViewBuilder extends StatelessWidget {
  const listViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1000,
      itemBuilder: (context, i) {
        return Container(
          child: Text(i.toString()),
        );
      },
    );
  }
}

///example for single chailde scrollview
class SingleScrollview extends StatelessWidget {
  const SingleScrollview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "hello world",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          Container(width: 100, height: 100, color: Colors.blue[200]),
          // Image.asset("images/me.jpg"),
          Container(
            width: 100,
            height: 150,
            color: Colors.red.shade200,
          ),
          Container(width: 100, height: 100, color: Colors.blue[200]),
          // Image.asset("images/me.jpg"),
          Container(width: 100, height: 150, color: Colors.black),
          Container(width: 100, height: 100, color: Colors.green[200]),
          // Image.asset("images/me.jpg"),
          Container(
            width: 100,
            height: 150,
            color: Colors.yellow.shade200,
          ),
          Container(width: 100, height: 100, color: Colors.blue[200]),
          // Image.asset("images/me.jpg"),
          Container(
            width: 100,
            height: 150,
            color: Colors.red.shade200,
          ),
          Container(width: 100, height: 100, color: Colors.blue[200]),
          // Image.asset("images/me.jpg"),
          Container(width: 100, height: 150, color: Colors.black),
          Container(width: 100, height: 100, color: Colors.green[200]),
          // Image.asset("images/me.jpg"),
          Container(
            width: 100,
            height: 150,
            color: Colors.yellow.shade200,
          ),
        ],
      ),
    );
  }
}

/// example for containr
class contianerWidget extends StatelessWidget {
  const contianerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/me.jpg'), fit: BoxFit.fill),
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(150)),
          border: Border.all(color: Colors.black, width: 9.5),
          boxShadow: [
            BoxShadow(
                color: Colors.blue,
                offset: Offset(1, 1),
                blurRadius: 10.5,
                blurStyle: BlurStyle.solid,
                spreadRadius: 3)
          ]),
      width: 300,
      height: 300,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,

      //  Text("salem alhaj",
      //     style: TextStyle(
      //         color: Color(0xff7733dd),
      //         fontSize: 30,
      //         fontWeight: FontWeight.w900,
      //         backgroundColor: Colors.red)),
    );
  }
}

//example for image
class Imeg extends StatelessWidget {
  const Imeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/me.jpg",
      fit: BoxFit.cover,
      width: 400,
      height: 400,
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SimpleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Handle button press
        print('Button pressed');
      },
      child: Text('Continue with Google'),
    );
  }
}
