import 'dart:io';
void main()
{
    int n;
    print("Enter the last number of your counting: ");
    n=int.parse(stdin.readLineSync()!);
    
    for(int i=0;i<=n;i++)
     print(i);
}