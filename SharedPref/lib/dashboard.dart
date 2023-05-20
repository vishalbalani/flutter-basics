import 'package:database_sharedpref/Login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> _criden = [];
  final DBKEY = "REQUiRED";
  final DBKEY1 = "Criden";

  @override
  void initState() {
    getValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            "Email : ${_criden[0]} Password: ${_criden[1]}",
            style: const TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: FloatingActionButton(
              onPressed: () async {
                var pref = await SharedPreferences.getInstance();
                pref.setBool(DBKEY, true);
                setState(() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                });
              },
              child: Text("LOGOOT"),
            ),
          )
        ],
      )),
    );
  }

  void getValue() async {
    var pref = await SharedPreferences.getInstance();
    List<String>? list = pref.getStringList(DBKEY1);
    List<String> criden = list ?? [];
    setState(() {
      _criden = criden;
    });
  }
}
