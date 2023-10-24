class User {
  String? name;
  String? userName;
  String? password;
  String? dob;

  User() {}
}

class PremiumUser extends User {
  double? discount;

  PremiumUser() : super() {
    print('welcome ');
  }

  void greetUser() {
    print('Welcome Premium User');
  }
}

main() {
  PremiumUser premium = PremiumUser();
  premium.name = 'ahmed';
  premium.discount = 52.8;
  premium.greetUser();
}
