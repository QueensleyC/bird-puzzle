class Piece {
  late String pieceName;
  late double a, b, c, d;

  Piece(this.pieceName, this.a, this.b, this.c, this.d);

  String get getPieceName{
    return pieceName;
  }

  Piece rotateRight() {
    //rotates a piece to the right
    return Piece(pieceName, d, a, b, c);
  }

  Piece rotateLeft() {
    //rotates a piece to the left
    return Piece(pieceName, b, c, d, a);
  }

  Piece rotateTwice() {
    //rotates a piece twice
    return Piece(pieceName, c, d, a, b);
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
            matrix[0][1] = a.toString();
            break;
          case 10:
            matrix[1][2] = b.toString();
            break;
          case 12:
            matrix[2][1] = c.toString();
            break;
          case 21:
            matrix[1][0] = d.toString();
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
        return a;

      case 1:
        return b;

      case 2:
        return c;

      case 3:
        return d;

      default:
        return 0;
    }
  }
}
