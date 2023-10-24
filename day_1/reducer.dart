main() {
  List lista = [1, 2, 3, 5];
  print(lista.reduce((value, element) {
    print(element);
  }));
}
