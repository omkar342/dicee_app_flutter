import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}
//
// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             flex: 2,
//             child: FlatButton(
//               child: Image.asset("images/dice1.png"),
//               onPressed: () {
//                 print("Left Button is clicked!");
//               },
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: FlatButton(
//               child: Image.asset("images/dice2.png"),
//               onPressed: () {
//                 print("Right Button is clicked!");
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1 , rightDiceNumber = 1;
  void changeDiceFace(){
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: FlatButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: FlatButton(
              child: Image.asset("images/dice$rightDiceNumber.png"),
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

