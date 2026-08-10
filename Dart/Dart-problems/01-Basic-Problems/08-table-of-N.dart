import 'dart:io';
void main()
{
    int n,ans;
    print("Enter the number: ");
    n=int.parse(stdin.readLineSync()!);
    
    print("The table of $n  is :- ");
    
    for(int i=1;i<=10;i++)
    {
     ans= n*i;   
    print("$n X $i= $ans");

    }
}  