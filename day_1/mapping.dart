//import 'dart:html';

//import 'dart:js_interop';

main() {
  // VoidCallback callback;
  List custom_mapping(List lis, int Function(int) callback,
      [bool checker = true]) {
    List dynList = [];
    for (dynamic element in lis) {
      dynList.add(callback(element));
    }
    if (checker == false) {
      return lis;
    }
    return dynList;
  }

  print(custom_mapping([1, 2, 3, 4, 5, 6], (p0) {
    return p0 * 3;
  }));
  // List lista = ['ahmed', 'mahmoud', 'mohsan', 'fathy'];

  // print(lista.map((e) {
  //   return e.;
  // }));

  // custom_mapping()
}
