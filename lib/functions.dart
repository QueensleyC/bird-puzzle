import 'dart:io';

import 'model/piece.dart';

class Functions {
  static bool isComplete = false;
  static late Piece defaultPieceArray;
  static List<String> flutterPieces = [];

  /// D, G and I are special cases

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

  /*static ArrayList<String> firstArray = new ArrayList<>();
  static ArrayList<String> secondArray = new ArrayList<>();
  static ArrayList<String> thirdArray = new ArrayList<>();
  static ArrayList<String> fourthArray = new ArrayList<>();*/

  //switches the decimal (changes 3.1 to 3.2 and vice versa)
  static double switchDecimal(double intNumber) {
    //converting the double variable to string so that we can convert it to a char array
    String number = intNumber.toString();

    List<String> charNum = []; // list to store characters of string

    number.split('').forEach((ch) {
      charNum.add(ch);
    });

    if (charNum[2] == "1") {
      charNum[2] = "2";
    } else {
      charNum[2] = "1";
    }

    String switchedValue = number[0] + "." + charNum[2];

    return double.parse(switchedValue); //returns the final float
  }

  void solvePuzzle(Piece middlePiece, Piece topEdgePiece, Piece rightEdgePiece,
      Piece bottomEdgePiece, Piece leftEdgePiece) {
    Piece topRightCornerPiece,
        bottomRightCornerPiece,
        bottomLeftCornerPiece,
        topLeftCornerPiece;

    //store potential corner pieces as an array
    List<Piece> potentialCorners = []; //size will be 4

    for (int i = 0; i < 9; i++) {
      //if the piece is already a middle, TE, RE, BE or LE piece, then move to the next piece
      if ((getPiece(i).pieceName == middlePiece.pieceName) ||
          (getPiece(i).pieceName == topEdgePiece.pieceName) ||
          (getPiece(i).pieceName == rightEdgePiece.pieceName) ||
          (getPiece(i).pieceName == bottomEdgePiece.pieceName) ||
          (getPiece(i).pieceName == leftEdgePiece.pieceName)) {
        continue;
      } else if (potentialCorners.isEmpty) {
        potentialCorners.add(getPiece(i));
      } else if (potentialCorners.length < 2) {
        potentialCorners.add(getPiece(i));
      } else if (potentialCorners.length < 3) {
        potentialCorners.add(getPiece(i));
      } else if (potentialCorners.length < 4) {
        potentialCorners.add(getPiece(i));
      }
      /* if the piece is already a piece in the potentialCorner array, then move to the next piece
                           if it isn't, add the piece to the potentialCorner array */

    }

    //orient the edge pieces correctly
    if (middlePiece.getSide(0) == switchDecimal(topEdgePiece.getSide(2))) {
    } else if (middlePiece.getSide(0) ==
        switchDecimal(topEdgePiece.rotateLeft().getSide(2))) {
      topEdgePiece = topEdgePiece.rotateLeft();
    } else if (middlePiece.getSide(0) ==
        switchDecimal(topEdgePiece.rotateRight().getSide(2))) {
      topEdgePiece = topEdgePiece.rotateRight();
    } else if (middlePiece.getSide(0) ==
        switchDecimal(topEdgePiece.rotateTwice().getSide(2))) {
      topEdgePiece = topEdgePiece.rotateTwice();
    }

    if (middlePiece.getSide(1) == switchDecimal(rightEdgePiece.getSide(3))) {
    } else if (middlePiece.getSide(1) ==
        switchDecimal(rightEdgePiece.rotateLeft().getSide(3))) {
      rightEdgePiece = rightEdgePiece.rotateLeft();
    } else if (middlePiece.getSide(1) ==
        switchDecimal(rightEdgePiece.rotateRight().getSide(3))) {
      rightEdgePiece = rightEdgePiece.rotateRight();
    } else if (middlePiece.getSide(1) ==
        switchDecimal(rightEdgePiece.rotateTwice().getSide(3))) {
      rightEdgePiece = rightEdgePiece.rotateTwice();
    }

    if (middlePiece.getSide(2) == switchDecimal(bottomEdgePiece.getSide(0))) {
    } else if (middlePiece.getSide(2) ==
        switchDecimal(bottomEdgePiece.rotateLeft().getSide(0))) {
      bottomEdgePiece = bottomEdgePiece.rotateLeft();
    } else if (middlePiece.getSide(2) ==
        switchDecimal(bottomEdgePiece.rotateRight().getSide(0))) {
      bottomEdgePiece = bottomEdgePiece.rotateRight();
    } else if (middlePiece.getSide(2) ==
        switchDecimal(bottomEdgePiece.rotateTwice().getSide(0))) {
      bottomEdgePiece = bottomEdgePiece.rotateTwice();
    }

    if (middlePiece.getSide(3) == switchDecimal(leftEdgePiece.getSide(1))) {
    } else if (middlePiece.getSide(3) ==
        switchDecimal(leftEdgePiece.rotateLeft().getSide(1))) {
      leftEdgePiece = leftEdgePiece.rotateLeft();
    } else if (middlePiece.getSide(3) ==
        switchDecimal(leftEdgePiece.rotateRight().getSide(1))) {
      leftEdgePiece = leftEdgePiece.rotateRight();
    } else if (middlePiece.getSide(3) ==
        switchDecimal(leftEdgePiece.rotateTwice().getSide(1))) {
      leftEdgePiece = leftEdgePiece.rotateTwice();
    }

    //check for the four corner pieces
    topLeftCornerPiece =
        checkCorner("tlcp", topEdgePiece, leftEdgePiece, potentialCorners);
    topRightCornerPiece =
        checkCorner("trcp", topEdgePiece, rightEdgePiece, potentialCorners);
    bottomLeftCornerPiece =
        checkCorner("blcp", bottomEdgePiece, leftEdgePiece, potentialCorners);
    bottomRightCornerPiece =
        checkCorner("brcp", bottomEdgePiece, rightEdgePiece, potentialCorners);

    int bool = 1;
    if (topLeftCornerPiece.getPieceName == "P") {
      bool *= 0;
    }
    if (topRightCornerPiece.getPieceName == "P") {
      bool *= 0;
    }
    if (bottomLeftCornerPiece.getPieceName == "P") {
      bool *= 0;
    }
    if (bottomRightCornerPiece.getPieceName == "P") {
      bool *= 0;
    }

    if (bool == 1) {
      isComplete = true;
    } else {
      isComplete = false;
    }

    if (isComplete) {
      print("The puzzle is complete");
    } else {
      print("The puzzle is incomplete");
    }
    print("");

    //print the pieces in matrix form
    printPuzzlePiecesAsMatrix(
        topLeftCornerPiece,
        topEdgePiece,
        topRightCornerPiece,
        leftEdgePiece,
        middlePiece,
        rightEdgePiece,
        bottomLeftCornerPiece,
        bottomEdgePiece,
        bottomRightCornerPiece);

    print("");

    printPuzzlePiecesSidesAsMatrix(
        topLeftCornerPiece,
        topEdgePiece,
        topRightCornerPiece,
        leftEdgePiece,
        middlePiece,
        rightEdgePiece,
        bottomLeftCornerPiece,
        bottomEdgePiece,
        bottomRightCornerPiece);
  }

  // arranges pieces in a matrix form
  static void printPuzzlePiecesAsMatrix(Piece A, Piece B, Piece C, Piece D,
      Piece E, Piece F, Piece G, Piece H, Piece I) {
    //prints the pieces in array form

    int row = 3;
    int col = 3;
    var matrix = List.generate(
        row, (i) => List.filled(col, "", growable: false),
        growable: false);

    for (int i = 0; i < row; i++) {
      //this will get the string form of i and j and merge them for easier use in the next step
      for (int j = 0; j < col; j++) {
        String ii = i.toString();
        String jj = j.toString();
        String ij = ii + jj;

        switch (int.parse(ij)) {
          //convert ij to int and assign the respective slots
          case 0:
            matrix[0][0] = A.getPieceName;
            break;
          case 1:
            matrix[0][1] = B.getPieceName;
            break;
          case 2:
            matrix[0][2] = C.getPieceName;
            break;
          case 10:
            matrix[1][0] = D.getPieceName;
            break;
          case 11:
            matrix[1][1] = E.getPieceName;
            break;
          case 12:
            matrix[1][2] = F.getPieceName;
            break;
          case 20:
            matrix[2][0] = G.getPieceName;
            break;
          case 21:
            matrix[2][1] = H.getPieceName;
            break;
          case 22:
            matrix[2][2] = I.getPieceName;
            break;
          default:
            matrix[i][j] = "   ";
        }
      }
    }

    for (int i = 0; i < 3; i++) {
      //display the result
      for (int j = 0; j < 3; j++) {
        flutterPieces.add(matrix[i][j]);
        stderr.write(matrix[i][j] + " "); // similar to System.out.print()
      }
      stderr.writeln(); // similar to System.out.println()
    }
  }

  // arranges the sides of each piece in a matrix form
  static void printPuzzlePiecesSidesAsMatrix(Piece A, Piece B, Piece C, Piece D,
      Piece E, Piece F, Piece G, Piece H, Piece I) {
    print("    " +
        A.getSide(0).toString() +
        "         " +
        B.getSide(0).toString() +
        "        " +
        C.getSide(0).toString());
    print(A.getSide(3).toString() +
        "     " +
        A.getSide(1).toString() +
        " " +
        B.getSide(3).toString() +
        "    " +
        B.getSide(1).toString() +
        " " +
        C.getSide(3).toString() +
        "    " +
        C.getSide(1).toString());
    print("    " +
        A.getSide(2).toString() +
        "         " +
        B.getSide(2).toString() +
        "        " +
        C.getSide(2).toString());

    print("    " +
        D.getSide(0).toString() +
        "         " +
        E.getSide(0).toString() +
        "        " +
        F.getSide(0).toString());
    print(D.getSide(3).toString() +
        "     " +
        D.getSide(1).toString() +
        " " +
        E.getSide(3).toString() +
        "    " +
        E.getSide(1).toString() +
        " " +
        F.getSide(3).toString() +
        "    " +
        C.getSide(1).toString());
    print("    " +
        D.getSide(2).toString() +
        "         " +
        E.getSide(2).toString() +
        "        " +
        F.getSide(2).toString());

    print("    " +
        G.getSide(0).toString() +
        "         " +
        H.getSide(0).toString() +
        "        " +
        I.getSide(0).toString());
    print(G.getSide(3).toString() +
        "     " +
        G.getSide(1).toString() +
        " " +
        H.getSide(3).toString() +
        "    " +
        H.getSide(1).toString() +
        " " +
        I.getSide(3).toString() +
        "    " +
        I.getSide(1).toString());
    print("    " +
        G.getSide(2).toString() +
        "         " +
        H.getSide(2).toString() +
        "        " +
        I.getSide(2).toString());
  }

  //returns specific piece
  Piece getPiece(int i) {
    switch (i) {
      case 0:
        return A;

      case 1:
        return B;

      case 2:
        return C;

      case 3:
        return D;

      case 4:
        return E;

      case 5:
        return F;

      case 6:
        return G;

      case 7:
        return H;

      case 8:
        return I;

      default:
        return defaultPiece;
    }
  }

  Piece getPieceWithPieceName(String p) {
    switch (p) {
      case "a":
        {
          return A;
        }
      case "b":
        {
          return B;
        }
      case "c":
        {
          return C;
        }
      case "d":
        {
          return D;
        }
      case "e":
        {
          return E;
        }
      case "f":
        {
          return F;
        }
      case "g":
        {
          return G;
        }
      case "h":
        {
          return H;
        }
      case "i":
        {
          return I;
        }
    }
    return defaultPiece;
  }

  //finds compatible corner pieces for each corner slot
  Piece checkCorner(String side, Piece verticalPiece, Piece horizontalPiece,
      List<Piece> potentialCorners) {
    /*
         * topRightCornerPiece (trcp) = vertical right & horizontal up = vrhu
         * topLeftCornerPiece (tlcp) = vertical left & horizontal up = vlhu
         * bottomRightCornerPiece (brcp) = vertical right & horizontal down = vrhd
         * bottomLeftCornerPiece (blcp) = vertical left & horizontal down = vlhd
         */

    double verticalRight;
    double horizontalUp;
    double verticalLeft;
    double horizontalDown;

    switch (side) {
      case "trcp":
        {
          verticalRight = verticalPiece.getSide(1);
          horizontalUp = horizontalPiece.getSide(0);

          for (int i = 0; i < 4; i++) {
            //check if there's a potential top-right corner piece in the potentialCorners array
            //if found, set as respective piece
            if ((potentialCorners[i].getSide(0) ==
                    switchDecimal(horizontalUp)) &
                (potentialCorners[i].getSide(1) ==
                    switchDecimal(verticalRight))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(1) ==
                    switchDecimal(horizontalUp)) &
                (potentialCorners[i].getSide(2) ==
                    switchDecimal(verticalRight))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(2) ==
                    switchDecimal(horizontalUp)) &
                (potentialCorners[i].getSide(3) ==
                    switchDecimal(verticalRight))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(3) ==
                    switchDecimal(horizontalUp)) &
                (potentialCorners[i].getSide(0) ==
                    switchDecimal(verticalRight))) return potentialCorners[i];
          }
        }
        break;
      case "tlcp":
        {
          verticalLeft = verticalPiece.getSide(3);
          horizontalUp = horizontalPiece.getSide(0);

          for (int i = 0; i < 4; i++) {
            //check if there's a potential top-right corner piece in the potentialCorners array
            //if found, set as respective piece
            if ((potentialCorners[i].getSide(0) ==
                    switchDecimal(verticalLeft)) &
                (potentialCorners[i].getSide(1) ==
                    switchDecimal(horizontalUp))) {
              return potentialCorners[i];
            }
            if ((potentialCorners[i].getSide(1) ==
                    switchDecimal(verticalLeft)) &
                (potentialCorners[i].getSide(2) ==
                    switchDecimal(horizontalUp))) {
              return potentialCorners[i];
            }
            if ((potentialCorners[i].getSide(2) ==
                    switchDecimal(verticalLeft)) &
                (potentialCorners[i].getSide(3) ==
                    switchDecimal(horizontalUp))) {
              return potentialCorners[i];
            }
            if ((potentialCorners[i].getSide(3) ==
                    switchDecimal(verticalLeft)) &
                (potentialCorners[i].getSide(0) ==
                    switchDecimal(horizontalUp))) {
              return potentialCorners[i];
            }
          }
        }
        break;
      case "brcp":
        {
          verticalRight = verticalPiece.getSide(1);
          horizontalDown = horizontalPiece.getSide(2);

          for (int i = 0; i < 4; i++) {
            //check if there's a potential top-right corner piece in the potentialCorners array
            //if found, set as respective piece
            if ((potentialCorners[i].getSide(0) ==
                    switchDecimal(verticalRight)) &
                (potentialCorners[i].getSide(1) ==
                    switchDecimal(horizontalDown))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(1) ==
                    switchDecimal(verticalRight)) &
                (potentialCorners[i].getSide(2) ==
                    switchDecimal(horizontalDown))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(2) ==
                    switchDecimal(verticalRight)) &
                (potentialCorners[i].getSide(3) ==
                    switchDecimal(horizontalDown))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(3) ==
                    switchDecimal(verticalRight)) &
                (potentialCorners[i].getSide(0) ==
                    switchDecimal(horizontalDown))) return potentialCorners[i];
          }
        }
        break;
      case "blcp":
        {
          verticalLeft = verticalPiece.getSide(3);
          horizontalDown = horizontalPiece.getSide(2);

          for (int i = 0; i < 4; i++) {
            //check if there's a potential top-right corner piece in the potentialCorners array
            //if found, set as respective piece
            if ((potentialCorners[i].getSide(0) ==
                    switchDecimal(verticalLeft)) &
                (potentialCorners[i].getSide(1) ==
                    switchDecimal(horizontalDown))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(1) ==
                    switchDecimal(verticalLeft)) &
                (potentialCorners[i].getSide(2) ==
                    switchDecimal(horizontalDown))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(2) ==
                    switchDecimal(verticalLeft)) &
                (potentialCorners[i].getSide(3) ==
                    switchDecimal(horizontalDown))) return potentialCorners[i];
            if ((potentialCorners[i].getSide(3) ==
                    switchDecimal(verticalLeft)) &
                (potentialCorners[i].getSide(0) ==
                    switchDecimal(horizontalDown))) return potentialCorners[i];
          }
        }
    }

    print("");

    return defaultPiece;
  }
}
