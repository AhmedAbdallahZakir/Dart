class Rect {
  double height;
  double width;

  Rect({required this.height, required this.width});

  Rect operator +(Rect otherRect) {
    return Rect(
        height: this.height + otherRect.height,
        width: this.width + otherRect.width);
  }

  bool operator ==(Object otherRect) {
    Rect r = otherRect as Rect;
    return r.height == this.height && r.width == r.height;
  }
}

main() {
  Rect r1 = Rect(height: 30, width: 50);
  Rect r2 = Rect(height: 80, width: 30);
  Rect r3 = r1 + r2;

  print(r3.height);
  print(r3.width);
}
