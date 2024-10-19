import 'dart:ffi';

// create a class AccountBank
class BankAccount {
  // private attribute variable
  final int _Id;
  final String _accountOwner;
  double _balance;

  // constructor of class BankAccount
  BankAccount(this._Id, this._accountOwner, this._balance);

  // method to get balance
  double getBalance() {
    return _balance;
  }

  double get balance => _balance;

  // method withdraw
  void withdraw(double amount) {
    if (amount >= 0 && balance >= amount) {
      _balance -= amount;
      print('Withdraw successful. Remaining balance: \$${balance}');
    } else {
      print('Withdrawal failed. Insufficient funds.');
    }
  }

  // method credit
  void credit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Amount credited. New balance: \$${balance}');
      // throw Exception('Withdrawal amount must be a positive value');
    } else {
      print('Invalid credit amount.');
      // throw Exception('Withdrawal failed. Insufficient funds');
    }
  }
}

// create a class Bank
class Bank {
  List<BankAccount> accounts = [];

  // add account
  void addAcount(BankAccount account) {
    accounts.add(account);
  }

  // remove account
  void removeAccount(BankAccount account) {
    accounts.remove(account);
  }
}

main() {
  Bank bank = Bank();

  // Creating BankAccounts
  BankAccount account1 = BankAccount(1, 'Nakata', 1000);
  BankAccount account2 = BankAccount(2, 'Panha', 1200);

  // Adding accounts to the Bank
  bank.addAcount(account1);
  bank.addAcount(account2);

  // Performing operations on accounts
  account1.withdraw(500);
  account2.credit(200);

  // Displaying account details
  print('Account 1 - Owner: ${account1._accountOwner}, Balance: \$${account1._balance}');
  print('Account 2 - Owner: ${account2._accountOwner}, Balance: \$${account2._balance}');
}
