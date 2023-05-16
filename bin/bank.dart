class BankAcount {
  // private properti
  double _balance = 0.0;

  // ?set metot to read balanse
  double get balance => _balance;

  //metott tot depozid money
  void depozid(double amount) => _balance += amount;

  //Method to withdraw money
  void withdrow(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
    } else {
      throw Exception('balans');
    }
  }
}

void main() {
  //great ar object
  BankAcount ar = BankAcount();

  // akcha aluu
  ar.depozid(100);
  print(ar.balance);

  //rezalt
  ar.withdrow(60);
  print(ar.balance);
}
