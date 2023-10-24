import 'dart:math';

main() {
  List lista = [1, 2, 3, 5];
  // print(lista.reduce((value, element) {
  //   print(element);
  // }));

  int reducer(List<int> list, int Function(int, int) reducer, [int acc = 0]) {
    if (acc == 0) {
      acc = list[0];
      for (int i = 1; i < list.length; i++) {
        reducer(acc, list[i]);
        acc += list[i];
      }
      return acc;
    } else {
      for (int i = 0; i < list.length; i++) {
        reducer(acc, list[i]);
        acc += list[i];
      }
      return acc;
    }
  }

  print(reducer([1, 2, 3], (value, element) => value + element));
  //print(customReducer([1, 2, 3], (value, element) => value + element, 1));
}
