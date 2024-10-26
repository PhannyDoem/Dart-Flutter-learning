class BankAccount {
  final int _id;
  final String _owner;
  double _balance = 0;

  BankAccount({required int id, required String owner})
      : _id = id,
        _owner = owner {
    this._balance = 0;
  }

  int get id => _id;
  String get owner => _owner;
  double get balance => _balance;

  void withdraw(double amount) {
    if (_balance - amount < 0) {
      throw Exception(
          "Withdraw $amount exceeed the current balance ($_balance");
    }
    _balance -= amount;
  }

  void credit(double amount) {
    _balance += amount;
  }
}

class Bank {
  final List<BankAccount> _accounts = [];
  final String name;

  Bank({required this.name});

  BankAccount createAccount(int accountId, String accountOwner) {
    if (_accounts.where((ba) => true).isNotEmpty) {
      throw Exception("This account id ($accountId) already exist in the bank");
    }

    BankAccount newAcount = new BankAccount(id: accountId, owner: accountOwner);
    _accounts.add(newAcount);
    return newAcount;
  }

  List<BankAccount> get acounts => new List<BankAccount>.from(_accounts);
}

// Tests
void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
