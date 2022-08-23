import 'dart:ui';

import 'package:flutter/material.dart';

import 'functions.dart';
import 'model/piece.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final A = Piece("A", 3.2, 1.2, 4.2, 3.1);

  //0
  final B = Piece("B", 2.1, 3.1, 4.2, 1.1);

  //1
  final C = Piece("C", 1.1, 4.1, 1.2, 3.2);

  //2
  final D = Piece("D", 3.1, 2.2, 4.2, 2.2);

  //3
  final E = Piece("E", 4.1, 1.1, 2.2, 2.1);

  //4
  final F = Piece("F", 4.1, 3.1, 2.1, 4.1);

  //5
  final G = Piece("G", 3.2, 2.2, 1.2, 1.2);

  //6
  final H = Piece("H", 3.2, 2.1, 4.1, 2.2);

  //7
  final I = Piece("I", 4.2, 3.1, 1.1, 1.1);

  //8
  final defaultPiece = Piece("P", 0, 0, 0, 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Functions().solvePuzzle(A, B, C, D, E); // testing
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var width = (deviceWidth - 50) / 3;
    List? letters = Functions.flutterPieces; // A list containing the pieces that form the matrix

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bird Puzzle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[0]}"),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[1]}"),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[2]}"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[3]}"),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[4]}"),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[5]}"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[6]}"),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[7]}"),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text("${letters[8]}"),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[0]}.jpg"),
                    ),
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[1]}.jpg"),
                    ),
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[2]}.jpg"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[3]}.jpg"),
                    ),
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[4]}.jpg"),
                    ),
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[5]}.jpg"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[6]}.jpg"),
                    ),
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[7]}.jpg"),
                    ),
                    SizedBox(
                      height: width,
                      width: width,
                      child: Image.asset("images/${letters[8]}.jpg"),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
