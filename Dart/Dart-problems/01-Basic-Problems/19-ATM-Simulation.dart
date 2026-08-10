import 'dart:io';
void main()
{
    int ch,balance=50000;
    
    
    bool isTransaction=true;
    
    while(isTransaction)
    {
        print("---------------MENUE-------------\n1. Check Balance\n2. Withdraw \n3. Deposit \n Enter your choice: ");
    ch=int.parse(stdin.readLineSync()!);
     switch(ch)
     {
         
        case 1:     // checking balance
        {
             
            print("your current balance =$balance ");

            print("Would you like to countinue transaction? (yes/no ");

           String transaction=stdin.readLineSync()!;
           
            if(transaction=="yes" || transaction=="Yes" )
               isTransaction=true;
            else 
                isTransaction=false;
            
            
        }
        case 2:       // withdrawal
        {
            int withdrawal,remaining;

            print("Enter amount of withdrawal: ");

            withdrawal=int.parse(stdin.readLineSync()!);
            
            if(withdrawal>balance)
              print("Insufficient Balance !");
            else
            {
             remaining= balance-withdrawal;

             balance=remaining;
             
             print("$withdrawal amount is withdraw from your account.");
            }  
            print("Would you like to countinue transaction? (yes/no ");

           String transaction=stdin.readLineSync()!;

            if(transaction=="yes" || transaction=="Yes" )
               isTransaction=true;
            else 
                isTransaction=false;
            
        }
        
        case 3:    // deposit
        {
            int deposit;

            print("Enter the amount you want to deposit: ");

            deposit=int.parse(stdin.readLineSync()!);

            balance=balance+deposit;

            print("$deposit amount is deposited in your account.");

            print("Would you like to continue transaction? (yes/no) ");

            String transaction=stdin.readLineSync()!;

            if(transaction=="yes" || transaction=="Yes" )
               isTransaction=true;
            else 
                isTransaction=false;
        }
        
        
        default:
        {
            print("Invalid choice !");
        }
        
     }
    } 
}