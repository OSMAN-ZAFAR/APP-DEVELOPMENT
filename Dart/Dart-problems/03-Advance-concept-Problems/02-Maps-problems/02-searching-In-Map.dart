import 'dart:io';
void main()
{
  Map<String, Map<String, int>> electronics =
  {
    "Laptops":
    {
      "ASUS VivoBook 14 X1404VAP": 150000,
      "ASUS ExpertBook B1402CBA (12th Gen Core i5)": 155000,
      "ASUS ExpertBook B3402FBA (Core i5)": 169999,
      "ASUS ExpertBook B1503CVA": 172000,
      "ASUS ExpertBook P1503CVA": 178000,
      "ASUS Expertbook B3402FB (12th Gen Core i7)": 225000,
      "ASUS TUF Gaming F15 (FX507ZC4 Core i5)": 260000,
      "ASUS TUF Gaming F15 (FX507VV Core i7, RTX 4060)": 350000,
      "ASUS ROG Strix G16 (G614J Core i7)": 400999,
      "ASUS TUF Gaming A14 (Ryzen AI 9, RTX 4050)": 509999,
    },

    "Mobiles":
    {
      "Apple iPhone 15": 799,
      "Samsung Galaxy S24": 999,
      "Samsung Galaxy S24 Ultra": 1299,
      "Google Pixel 8 Pro": 999,
      "OnePlus 12": 799,
      "Motorola Edge (2023)": 599,
      "Samsung Galaxy A54": 449,
      "Google Pixel 7a": 499,
    },

    "Ear Buds":
    {
      "Sony WF-1000XM5": 249,
      "Samsung Galaxy Buds 3 Pro": 199,
      "Google Pixel Buds Pro 2": 189,
      "Bose QuietComfort Ultra Earbuds": 249,
      "Anker Soundcore Liberty 4 NC": 79,
      "CMF Buds 2 Plus": 70,
      "Audionic Airbud 550": 60,
    }
    
  };
   String search;

print("Enter what do you want to buy from electronics:");
search = stdin.readLineSync()!.toLowerCase();

if (search == "laptop" || search == "laptops")
{
    print(electronics["Laptops"]);
}
else if (search == "bud" || search == "buds")
{
    print(electronics["Ear Buds"]);
}
else if (search == "mobile" || search == "mobiles")
{
    print(electronics["Mobiles"]);
}
else
{
    print("Sorry! This product is not available");
}    
                    


}