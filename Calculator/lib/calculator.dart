import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var text = "";
  var calcValue = "";
  var result = "";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1c1c1c),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "$calcValue = $result",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height / 1.7,
              decoration: BoxDecoration(
                  color: Color(0xff4a4a4a),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      block("AC", Colors.red),
                      block("CC", Colors.red),
                      block("%", Colors.blue),
                      block("/", Colors.blue)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      block("7"),
                      block("8"),
                      block("9"),
                      block("*", Colors.blue)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      block("4"),
                      block("5"),
                      block("6"),
                      block("-", Colors.blue)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      block("1"),
                      block("2"),
                      block("3"),
                      block("+", Colors.blue)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      block("00"),
                      block("0"),
                      block("."),
                      block("=", Colors.red)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget block(String text, [Color? color]) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (text == "AC") {
            calcValue = "";
            result = "";
          } else if (text == "C") {
            calcValue = calcValue.isNotEmpty
                ? calcValue.substring(0, calcValue.length - 1)
                : "";
          } else if (text == "=") {
            result = evaluateExpression(calcValue);
          } else {
            calcValue += text;
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 8),
        child: Container(
          height: 75,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Color(0xff1c1c1c),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: color ?? Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  String evaluateExpression(String expression) {
    try {
      // Evaluate the expression
      dynamic result = 0;
      if (expression.contains("+")) {
        final values = expression.split("+");
        result = double.parse(values[0]) + double.parse(values[1]);
      } else if (expression.contains("-")) {
        final values = expression.split("-");
        result = double.parse(values[0]) - double.parse(values[1]);
      } else if (expression.contains("*")) {
        final values = expression.split("*");
        result = double.parse(values[0]) * double.parse(values[1]);
      } else if (expression.contains("/")) {
        final values = expression.split("/");
        result = double.parse(values[0]) / double.parse(values[1]);
      } else if (expression.contains("%")) {
        final values = expression.split("%");
        result = double.parse(values[0]) % double.parse(values[1]);
      }
      return result.toString();
    } catch (e) {
      print("Error: $e");
      return "Error";
    }
  }
}
