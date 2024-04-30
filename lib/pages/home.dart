import 'package:crudoperation/pages/empolyee.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => employee()));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Flutter Firebase'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
        child: Column(
          children: [
            Material(
              elevation: 5.0,
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name: Priyansh Gupta",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "Age: 19",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "Location: India",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
