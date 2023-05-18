import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var Uemail = TextEditingController();
  var Upass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blue.shade200, Colors.pink.shade100],
        )),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Expanded(
            child: ListView(children: [
              SizedBox(
                height: 150,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "L O G ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "I N",
                      style: TextStyle(
                          fontSize: 20, color: Colors.orange.shade800),
                    )
                  ],
                )),
              ),
              Container(
                height: 60,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: Uemail,
                  decoration: InputDecoration(
                      hintText: "Enter your E-mail",
                      prefixIcon: const Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange.shade900),
                      )),
                ),
              ),
              Container(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: Upass,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter your Password",
                      prefixIcon: const Icon(Icons.key),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange.shade900),
                      )),
                ),
              ),
              Container(
                height: 30,
              ),
              Container(
                  width: 300,
                  color: Colors.orange.shade900,
                  child: TextButton(
                      onPressed: () {
                        String dEmail = Uemail.text.toString();
                        String dPass = Upass.text.toString();
                        print("$dEmail $dPass");
                      },
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ))),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account "),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "register now!",
                        style: TextStyle(color: Colors.blue.shade800),
                      ))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
