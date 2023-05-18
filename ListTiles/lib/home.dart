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
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/Img/dp.png"),
              backgroundColor: Colors.green,
              // minRadius: 10,
            ),
            title: Text(arrNames[index],
                style: Theme.of(context).textTheme.displayLarge),
            subtitle: Text("Number"),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 3,
          );
        },
      ),
    );
  }
}
