void main ()
{
    // syntax of list defination:- 
    
    // List<data-type-of-List> List-name = [List-intialization];
    
    List <int> numbers=[12,34,45,56];
    print(numbers);
    
    
    // // if we don't specify the data-type of the list then it becomes dynamic list. 
    
    List  list=[12,"string",12.34];
    print(list);
    
    
    
    // -------------------- List-Functions-------------------
                  
                  
    
    // ====>>  .add function add the value at the end of the list.
    
    List<int> number=[12,34,45];
    number.add(345);
    print(number);
    
    
    // ====>>  .remove function remove the specified value form the list.
    
    List<int> number1=[12,34,45];
    number1.remove(45);
    print(number1);
   
   
    
    //  ====>> Fixed-Length List:- There is a fixed length list in which we can't add the new values after intialization.
    
    // In intialization-syntax (number-of element-in-list,with-which-number-you-want-to-fill)
    
    List<int> fixList=List.filled(5,3);
    print(fixList);
    fixList.add(34);
    
    //  ====>> List-Modification:-
    
    // In List modification you can modify any element of the list . by calling it's index number.You can also modify the fixed-length-list.
    
     List<int> number2=[12,34,45];
    number2[2]=100;
     print(number2);
    
    
    // contains method is used to check the specified element is exsist  in the list.
    List<int> number3=[12,34,45];
     print(number3.contains(34));
    
    
    //  A clear function removes all elements from the List.
    
    List<int> number4=[12,34,45];
     number4.clear();
    print(number4);
    
    // -------------------- List-Proporties-------------------
    
    //==>  Clear.property will clear all the element from the list.
    
     List<int> number5=[12,34,45];
     number5.clear();
    print(number5);
    
    
    //==>  isEmpty.property tells us either list is empty or not
    
     List<int> number6=[12,34,45];
     print(number6.isEmpty);
     
     //==>  length.property tells us length of list.
    
     List<int> number7=[12,34,45];
     print(number7.length);
    
    
    //  ====>> reversed will reverse the whole list and then return it .
     List<int> number8=[12,34,45];
    print(number8);
    print(number8.reversed);
    

}