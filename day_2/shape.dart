class Shape {
  var line1;
  var line2;
  var line3;
  var line4;

  Shape(l1, l2, l3, l4) {
    line1 = l1;
    line2 = l2;
    line3 = l3;
    line4 = l4;
  }

  void draw_shape() {
    print("I will draw this shape");
  }
}

class Rectangle extends Shape {
  Rectangle(width, height) : super(width, height, width, height);

  void print_rectangle() {
    print(line1);
    print(line2);
    print(line3);
    print(line4);
  }

  @override
  void draw_shape() {
    super.draw_shape();
    for (int i = 0; i < line1; i++) {
      String w = "";
      for (int j = 0; j < line2; j++) {
        w += "*";
      }
      print(w);
    }
  }
}

class Square extends Rectangle {
  String char;
  Square(line1, this.char) : super(line1, line1);

  draw_shape1() {
    for (int i = 0; i < line1; i++) {
      String w = "";
      for (int j = 0; j < line1; j++) {
        w += char;
      }
      print(w);
    }
  }
}

main() {
  // Rectangle r = Rectangle(3, 5);
  // r.print_rectangle();
  // r.draw_shape();

  Square s = Square(5, '#');
  s.draw_shape1();
}
