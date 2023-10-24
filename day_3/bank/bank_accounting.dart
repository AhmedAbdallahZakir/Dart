class BankAcccounting {
  int? account_number;
  static int id = 0;
  String? account_holder_name;
  double balance;
  String? account_password;

  BankAcccounting(
      {required this.balance,
      required this.account_holder_name,
      required this.account_number,
      required this.account_password});

  double operator +(double money) {
    return this.balance - money;
  }

  receive_money(BankAcccounting bankAccount, double money) {
    if (bankAccount.balance >= money) {
      this.balance += money;
      bankAccount.balance -= money;
    }
  }

  send_money(BankAcccounting bankAcccounting, double money, String password) {
    if (this.account_password == password) {
      if (bankAcccounting.balance >= money) {
        bankAcccounting.balance += money;
        this.balance -= money;
      }
    } else {
      throw ArgumentError('Password is not correct ');
    }
  }

  String changePssword(String oldPassword, String newPassword) {
    if (oldPassword == this.account_password) {
      oldPassword = newPassword;
      return newPassword;
    } else {
      throw ArgumentError('Old password is wrong');
    }
  }

  double checkBalance(String pass) {
    if (this.account_password == pass) {
      return this.balance;
    } else {
      throw ArgumentError('Old Password is wrong');
    }
  }
}

void main(List<String> args) {
  BankAcccounting account = BankAcccounting(
      balance: 2000.00,
      account_holder_name: 'ahmed mahmoud',
      account_number: 245428524,
      account_password: '4114124');
  //print(account.changePssword('4114124', '123456'));

  print(account.checkBalance('4114124'));

  BankAcccounting acc = BankAcccounting(
      balance: 600.0,
      account_holder_name: 'mohmud',
      account_number: 4514582,
      account_password: '45129');

  print('initial Balances: ');
  print('Account 1: ${account.balance} and Accont 2: ${acc.balance}');

  account.send_money(acc, 200, '4114124');
  print('After sending: ');
  print('Account 1: ${account.balance} and Accont 2: ${acc.balance}');

  account.receive_money(acc, 500);
  print('Account 1: ${account.balance} and Accont 2: ${acc.balance}');
}
// class Other extends BankAcccounting{
//   int money;
//   String? password;

//   Other({required this.money ,required this.password ,}): super();
//] }