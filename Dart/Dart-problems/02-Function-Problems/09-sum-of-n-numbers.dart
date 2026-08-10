import 'dart:io';

void main()
{
    int n;
    print("Enter the number: ");
    n=int.parse(stdin.readLineSync()!);
    
    int result=sumOfNum(n);
    
    print("The sum of all numbers= $result");
}

int sumOfNum(int n)
{
    int sum=0;
    for(int i=1;i<=n;i++)
    {
        sum=sum+i;
    }
    
    return sum;
}