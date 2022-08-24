class Piece {
  late String pieceName;
  late double top, right, bottom, left;

  Piece({
    required this.pieceName,
    required this.top,
    required this.right,
    required this.bottom,
    required this.left,
  });

  String get getPieceName {
    return pieceName;
  }

  Piece rotateRight() {
    //rotates a piece to the right
    return Piece(
      pieceName: pieceName,
      top: left,
      right: top,
      bottom: right,
      left: bottom,
    );
  }

  Piece rotateLeft() {
    //rotates a piece to the left
    return Piece(
      pieceName: pieceName,
      top: right,
      right: bottom,
      bottom: left,
      left: top,
    );
  }

  Piece rotateTwice() {
    //rotates a piece twice
    return Piece(
      pieceName: pieceName,
      top: bottom,
      right: left,
      bottom: top,
      left: right,
    );
  }

  void printPiece() {
    //prints the sides of a piece
    print(pieceName +
        " = [" +
        getSide(0).toString() +
        ", " +
        getSide(1).toString() +
        ", " +
        getSide(2).toString() +
        ", " +
        getSide(3).toString() +
        "]");
  }

  void printPieceSideMatrix() {
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
          case 01:
            matrix[0][1] = top.toString();
            break;
          case 10:
            matrix[1][2] = right.toString();
            break;
          case 12:
            matrix[2][1] = bottom.toString();
            break;
          case 21:
            matrix[1][0] = left.toString();
            break;
          default:
            matrix[i][j] = "   ";
        }
      }
    }

    for (int i = 0; i < 3; i++) {
      //display the result
      for (int j = 0; j < 3; j++) {
        print(matrix[i][j]);
      }
      print("");
    }
  }

  double getSide(int i) {
    //returns a specific side of a piece
    switch (i) {
      case 0:
        return top;

      case 1:
        return right;

      case 2:
        return bottom;

      case 3:
        return left;

      default:
        return 0;
    }
  }
}
