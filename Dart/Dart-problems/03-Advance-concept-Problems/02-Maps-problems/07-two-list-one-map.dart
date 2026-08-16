void main()
{
  List<String> names = ["Ali", "Osman", "Ahmed"];
  List<int>marks = [80, 95, 75];

Map<String,int> studentRecord={};
for(int i=0;i<names.length;i++)
{
  studentRecord[names[i]]= marks[i];
}
print(studentRecord);
}