class FreeUser {
  String? firstName;
  String? lastName;
  String? password;
  String? email;
  double totleAmount = 0;
  static int id = 0;
  static double total_income = 0;

  FreeUser(fName, LName, pass, email) {
    this.firstName = fName;
    this.lastName = LName;
    this.password = pass;
    this.email = email;
    id++;
    print(id);
  }

  static double incomeAfterTaxes(double taxes) {
    total_income -= taxes;
    return total_income;
  }

  void buyProduct(double price) {
    this.totleAmount += price;
  }
}

class PaidUser extends FreeUser {
  Plan plan;

  PaidUser(
    this.plan,
    fname,
    lname,
    pass,
    email,
  ) : super(fname, lname, pass, email);
  @override
  void buyProduct(double price) {
    this.totleAmount += price - (plan.discount_price * price);
  }
}

abstract class Plan {
  final double discount_price;

  Plan(this.discount_price);
}

class Gold extends Plan {
  Gold() : super(.50);
}

class Silver extends Plan {
  Silver() : super(.25);
}

class Diamond extends Plan {
  Diamond() : super(.75);
}

main() {
  FreeUser user1 = FreeUser('ahmed', 's', 'd', 'f');
  FreeUser user2 = FreeUser('ahmed', 's', 'd', 'f');
  FreeUser user3 = FreeUser('ahmed', 's', 'd', 'f');
  FreeUser user4 = FreeUser('ahmed', 's', 'd', 'f');
  FreeUser user5 = FreeUser('ahmed', 's', 'd', 'f');

  print(FreeUser.id);
}
