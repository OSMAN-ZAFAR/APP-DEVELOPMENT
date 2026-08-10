import 'dart:io';
void main()
{
    int n=5;
  
    for(int i=1;i<=n;i++)
    {
       for(int j=1;j<=i;j++)
       {
           stdout.write("*");  // in dart everyprint statement is in the nextline, that's why we use the stdout.write   method to create the right angle.16-
       }
       print("");
    }
}