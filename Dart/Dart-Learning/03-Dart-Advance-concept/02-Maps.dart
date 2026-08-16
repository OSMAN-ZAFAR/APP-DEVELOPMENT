void main() 
{
  Map <String,int> pincode={

     "Lahore": 65089,
     "Karachi": 12452,
     "FortAbbas": 62206,
     "sialkot": 53221
  };
  print(pincode["sialkot"]);     // accessing the value of key form Maps

  pincode["Lahore"]=65000;   // updating the value of key in Maps
  print(pincode);

  pincode.remove("sialkot");   // removing the key and value from Maps
  print(pincode);

  print(pincode.containsKey("Karachi"));   // checking the key is present or not in Maps

  print(pincode.containsValue(65000));   // checking the value is present or not in Maps

pincode.forEach((key,value)
  {
    print(key);                   // accessing the key values by usin forEach loop

    print(value);

  });


  for(var element in pincode.entries){
    print(element.key);                  // accessing the key values by usin for-in loop
    print(element.value);

  }
  
}