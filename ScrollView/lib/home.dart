import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           height: 2000,
//           width: 200,
//           decoration: BoxDecoration(
//             color: Colors.purple,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "text1",
//                     style: TextStyle(fontSize: 25),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text("text1"),
//                   Text("text2"),
//                   Text("text3"),
//                   // Text("text4"),
//                 ],
//               ),
//               InkWell(
//                 onTap: () {
//                   print("Hello");
//                 },
//                 child: Row(
//                   children: [
//                     Text("text2"),
//                     Text("text3"),
//                     Text("text4"),
//                   ],
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     print("Button");
//                   },
//                   child: Text("VVVV"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Scroll"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 11, right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 11, right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.orange,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 11, right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
