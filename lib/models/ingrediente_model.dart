
class Ingrediente{

  String strIngredient1;
  String strIngredient2;
  String strIngredient3;
  String strIngredient4;
  String strIngredient5;
  String strIngredient6;
  String strIngredient7;
  String strIngredient8;
  String strIngredient9;
  String strIngredient10;
  String strIngredient11;
  String strIngredient12;
  String strIngredient13;
  String strIngredient14;
  String strIngredient15;
  String strIngredient16;
  String strIngredient17;
  String strIngredient18;
  String strIngredient19;
  String strIngredient20;
  
  Ingrediente({
    
    required this.strIngredient1,
    required this.strIngredient2,
    required this.strIngredient3,
    required this.strIngredient4,
    required this.strIngredient5,
    required this.strIngredient6,
    required this.strIngredient7,
    required this.strIngredient8,
    required this.strIngredient9,
    required this.strIngredient10,
    required this.strIngredient11,
    required this.strIngredient12,
    required this.strIngredient13,
    required this.strIngredient14,
    required this.strIngredient15,
    required this.strIngredient16,
    required this.strIngredient17,
    required this.strIngredient18,
    required this.strIngredient19,
    required this.strIngredient20,

});

factory Ingrediente.fromJson(Map<String, dynamic> json)
{
  return Ingrediente(
  strIngredient1: json['strIngredient1'], 
  strIngredient2:json['strIngredient2'], 
  strIngredient3:json['strIngredient3'], 
  strIngredient4:json['strIngredient4'], 
  strIngredient5:json['strIngredient5'], 
  strIngredient6:json['strIngredient6'], 
  strIngredient7:json['strIngredient7'], 
  strIngredient8:json['strIngredient8'], 
  strIngredient9:json['strIngredient9'], 
  strIngredient10:json['strIngredient10'], 
  strIngredient11:json['strIngredient11'], 
  strIngredient12:json['strIngredient12'], 
  strIngredient13:json['strIngredient13'], 
  strIngredient14:json['strIngredient14'], 
  strIngredient15:json['strIngredient15'], 
  strIngredient16:json['strIngredient16'], 
  strIngredient17:json['strIngredient17'], 
  strIngredient18:json['strIngredient18'], 
  strIngredient19:json['strIngredient19'], 
  strIngredient20:json['strIngredient20']
  );

}
 



}