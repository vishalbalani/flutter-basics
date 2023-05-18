import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "Vishal",
      "Paras",
      "Chaitanya",
      "Vashu",
      "Vishakh",
      "Parth",
      "Aditya",
      "Ishit"
    ];
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text(
            "Hello " + arrNames[index],
            style: TextStyle(fontSize: 21),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 3,
          );
        },
      ),
    );
  }
}
