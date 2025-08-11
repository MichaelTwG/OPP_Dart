// Regular or Computed
class BankAccount {
  double _balance = 0.0;

  double get balance {
    return _balance;
  }

  set balance(double value) {
    if (value > 0) {
      _balance = value;
    }
  }

  String get status {
    if(_balance == 0){
      return "Empty";
    } else if (_balance < 100) {
      return "Low";
    } else {
      return "Healthy";
    }
  }

  void deposit(double amount) {
    _balance += amount;
  }

  void getBalance() {
    print("Current balance: $_balance");
  }
}

void main(){
  BankAccount account = BankAccount();
  account.balance = 250.0;
  print('Balance: ${account.balance}');
  print('Status: ${account.status}');
}