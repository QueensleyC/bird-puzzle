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
  final A = Piece(
    pieceName: "A",
    top: 3.2,
    right: 1.2,
    bottom: 4.2,
    left: 3.1,
  ); //0

  final B = Piece(
    pieceName: "B",
    top: 2.1,
    right: 3.1,
    bottom: 4.2,
    left: 1.1,
  ); //1

  final C = Piece(
    pieceName: "C",
    top: 1.1,
    right: 4.1,
    bottom: 1.2,
    left: 3.2,
  ); //2

  final D = Piece(
    pieceName: "D",
    top: 3.1,
    right: 2.2,
    bottom: 4.2,
    left: 2.2,
  ); //3

  final E = Piece(
    pieceName: "E",
    top: 4.1,
    right: 1.1,
    bottom: 2.2,
    left: 2.1,
  ); //4

  final F = Piece(
    pieceName: "F",
    top: 4.1,
    right: 3.1,
    bottom: 2.1,
    left: 4.1,
  ); //5

  final G = Piece(
    pieceName: "G",
    top: 3.2,
    right: 2.2,
    bottom: 1.2,
    left: 1.2,
  ); //6

  final H = Piece(
    pieceName: "H",
    top: 3.2,
    right: 2.1,
    bottom: 4.1,
    left: 2.2,
  ); //7

  final I = Piece(
    pieceName: "I",
    top: 4.2,
    right: 3.1,
    bottom: 1.1,
    left: 1.1,
  ); //8

  final defaultPiece = Piece(
    pieceName: "P",
    top: 0,
    right: 0,
    bottom: 0,
    left: 0,
  );

  @override
  void initState() {
    super.initState();

    Functions().solvePuzzle(A, B, C, D, E); // testing
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var width = (deviceWidth - 50) / 3;
    List? letters = Functions
        .flutterPieces; // A list containing the pieces that form the matrix

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bird Puzzle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
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
      ),
    );
  }
}
