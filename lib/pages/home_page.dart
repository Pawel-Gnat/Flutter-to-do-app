import 'package:flutter/material.dart';
import '../components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text("TO DO"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: ListView.builder(itemBuilder: itemBuilder)
        // body: ListView(
        //   children: [
        //     TodoTile(
        //         taskName: 'Make Tutorial',
        //         taskCompleted: true,
        //         onChanged: (value) {}),
        //     TodoTile(
        //         taskName: 'Do Exercise',
        //         taskCompleted: false,
        //         onChanged: (value) {}),
        //   ],
        // ),
        );
  }
}
