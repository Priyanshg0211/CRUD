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
      floatingActionButton: FloatingActionButton(onPressed: () {} , child: Icon(Icons.add),),
      appBar: AppBar(
        title: Text('Flutter Firebase'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}