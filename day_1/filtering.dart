//import 'dart:html';

main() {
  print(custom_any([1, 2, 3, 4, 5, 6], (el) => el > 6));
  print(custom_every([3, 6, 9, 12, 15, 18, 21], (el) => el % 3 == 0));
  print(custom_some([3, 6, 9, 12, 15, 18, 21], (el) => el % 3 == 1));
}

bool custom_some(List lis, Function some) {
  List value = [];
  for (int element in lis) {
    if (some(element)) {
      value.add(element);
    }
  }
  if (value.length < lis.length && value.length > 0) {
    return true;
  }
  return false;
}

bool custom_any(List lis, bool Function(int val) any) {
  List value = [];
  for (int element in lis) {
    if (any(element)) {
      value.add(element);
    }
  }
  if (value.length > 0) {
    return true;
  }
  return false;
}

bool custom_every(List lis, bool Function(int) every) {
  List value = [];
  for (int element in lis) {
    if (every(element)) {
      value.add(element);
    }
  }
  if (lis.length == value.length) {
    return true;
  }
  return false;
}
