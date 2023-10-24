// starting point is main function

// every dara type in dart is class
main() {
  // print('ahmed');
  // var number = 50;
  // print(number);

  List names = ['ahmed', 'abdallah', 'hjl'];
  // print(names.map((name) {
  //   if (name.length > 4) {
  //     return name.length;
  //   }
  // }));
  //List names = ['ahmed', 'abdallah', 'hjl'];
  print(names.map((name) {
    //eturn name + ;
  }));
  // print(names.where((element) {
  //   return element.length < 5;
  // }));
  List number = [3, 2, 1];
  print(number.reduce((value, element) {
    //print(value);
    //print(element);
    //return element + value;
    //return value + value;
    return element + element;
  }));
}
