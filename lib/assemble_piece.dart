import 'model/piece.dart';
import 'package:parrot_puzzle/functions.dart' as func;

class AssemblePiece {
  // late Piece A,B,C,D,E,F,G,H,I;

}

void main() {
  ///1 - toucan, 2 - yellowParrot, 3 - dove, 4 - greenParrot

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
  
  func.Functions().solvePuzzle(A, B, C, D, E);
}
