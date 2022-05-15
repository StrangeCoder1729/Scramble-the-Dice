import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(child: Text('Dicee')),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // @override
  // int leftdicenumber = 1;
  // int randomminmax = 1 + Random().nextInt(6-0);
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  @override
  Widget build(BuildContext context) {
    void updating(){
      setState(() {
        int randomminmax = 1 + Random().nextInt(6);
        leftdicenumber =  randomminmax;
        int randomminmax1 = 1 + Random().nextInt(6);
        rightdicenumber = randomminmax1;
        // print(leftdicenumber);

        // leftdicenumber = 5;
      });
    }


    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                // flex : 2,
                child: TextButton(
                  onPressed: () {
                    // updating();
                    // print("Left button was pressed");
                  },
                  child: Image.asset("images/dice$leftdicenumber.png"),
                 ),
              ),
              Expanded(
                // flex : 1,
                  child: TextButton(
                    onPressed: (){
                      // updating();
                      // print("Right Button was pressed");
                    },
                    child: Image.asset("images/dice$rightdicenumber.png"),
                  ),
              ),

            ],
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              primary: Colors.black, // foreground
            ),
            onPressed: () {
              updating();
            },
            child: const Text(
                'Scramble',
              style : TextStyle(
                color: Colors.white,
              )
            ),
          ),
        ],
      ),
    );
  }
}














































//
// class DicePage extends StatelessWidget {
//   DicePage({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     int randomminmax = 1 + Random().nextInt(6-0);
//     int leftdicenumber = randomminmax;
//
//     int randomminmax1 = 1 + Random().nextInt(6-0);
//     int rightdicenumber = randomminmax1;
//
//     // print(leftdicenumber);
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             // flex : 2,
//             child: TextButton(
//               onPressed: () {
//                 print("Left button was pressed");
//
//               },
//               child: Image.asset("images/dice$leftdicenumber.png"),
//             ),
//           ),
//           Expanded(
//               // flex : 1,
//               child: TextButton(
//                 onPressed: (){
//                   print("Right Button was pressed");
//                 },
//                 child: Image.asset("images/dice$rightdicenumber.png"),
//               )),
//         ],
//       ),
//     );
//   }
// }
