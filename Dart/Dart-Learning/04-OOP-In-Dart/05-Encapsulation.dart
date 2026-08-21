class BankAccount{
  int _balance=1000;

  void deposit (int depositAmount){
    _balance += depositAmount;
    print('your current balance is $_balance');
  }
}

// Encapsulation specifically concerns libraries, not classes."

void main(){
  BankAccount account1=BankAccount();
  account1.deposit(5000);
  account1._balance=7000;
  print(account1._balance);
}