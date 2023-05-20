import 'package:database_sharedpref/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var uEmail = TextEditingController();
  var uPass = TextEditingController();
  final DBKEY = "REQUiRED";
  final DBKEY1 = "Criden";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.lightBlue.shade200,
            Colors.lightGreen.shade200
          ])),
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        children: [
                          const TextSpan(text: "LOG"),
                          TextSpan(
                              text: "IN",
                              style: TextStyle(color: Colors.blue.shade500))
                        ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: SizedBox(
                      width: 350,
                      child: TextFormField(
                        controller: uEmail,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          prefixIcon: const Icon(Icons.email),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.lightBlue),
                          ),
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !value.contains('@')) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: uPass,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.key),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.lightBlue),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 60,
                          minWidth: 100,
                          maxHeight: 100,
                          maxWidth: 200),
                      child: ElevatedButton(
                          onPressed: () async {
                            var pref = await SharedPreferences.getInstance();
                            setState(() {
                              pref.setBool(DBKEY, false);
                              pref.setStringList(DBKEY1, [
                                uEmail.text.toString(),
                                uPass.text.toString()
                              ]);
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Dashboard()));
                            });
                          },
                          child: const Text("LOGIN")))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
