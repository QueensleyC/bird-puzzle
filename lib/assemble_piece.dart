import 'model/piece.dart';
import 'package:parrot_puzzle/functions.dart' as func;

class AssemblePiece {
  // late Piece A,B,C,D,E,F,G,H,I;

}

void main() {
  ///1 - toucan, 2 - yellowParrot, 3 - dove, 4 - greenParrot

  final A = Piece("A", 3.2, 1.2, 4.2, 3.1); //0
  final B = Piece("B", 2.1, 3.1, 4.2, 1.1); //1
  final C = Piece("C", 1.1, 4.1, 1.2, 3.2); //2
  final D = Piece("D", 3.1, 2.2, 4.2, 2.2); //3
  final E = Piece("E", 4.1, 1.1, 2.2, 2.1); //4
  final F = Piece("F", 4.1, 3.1, 2.1, 4.1); //5
  final G = Piece("G", 3.2, 2.2, 1.2, 1.2); //6
  final H = Piece("H", 3.2, 2.1, 4.1, 2.2); //7
  final I = Piece("I", 4.2, 3.1, 1.1, 1.1); //8

  final defaultPiece = Piece("P", 0, 0, 0, 0);
  func.Functions().solvePuzzle(A, B, C, D, E);
}
