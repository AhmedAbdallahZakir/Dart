import 'dart:math';

main() {
  List lista = [1, 2, 3, 5];
  // print(lista.reduce((value, element) {
  //   print(element);
  // }));

  int reducer(List<int> list, int Function(int, int) reducer, [int acc = 0]) {
    if (acc == 0) {
      acc = list[0];
    }
    for (int element in list) {
      reducer(acc, element);
      acc += element;
    }
    return acc;
  }

  print(reducer([1, 2, 3], (value, element) => value + element));
}
