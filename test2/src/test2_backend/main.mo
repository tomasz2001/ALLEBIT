import Nat "mo:base/Nat";
actor {
  type cipi_ciapa = {
    post : Text;
    kisser : Text; 

    };

  
  var boy9 : cipi_ciapa = {kisser = "1"; post = "uwu";};
  var boy8 : cipi_ciapa = {kisser = "1"; post = "uwu";};
  var boy7 : cipi_ciapa = {kisser = "2"; post = "uwu";};
  var boy6 : cipi_ciapa = {kisser = "2"; post = "uwu";};
  var boy5 : cipi_ciapa = {kisser = "2"; post = "uwu";};
  var boy4 : cipi_ciapa = {kisser = "2"; post = "uwu";};
  var boy3 : cipi_ciapa = {kisser = "2"; post = "uwu";};
  var boy2 : cipi_ciapa = {kisser = "1"; post = "uwu";};
  var boy1 : cipi_ciapa = {kisser = "1"; post = "uwu";};
  var boy0 : cipi_ciapa = {kisser = "1"; post = "uwu";};
  var boy : cipi_ciapa = {kisser = "1"; post = "uwu";};
  public query func greet(name : Text) : async Text {
   switch(name){
   case("0"){return boy0.post;};
   case("1"){return boy1.post;};
   case("2"){return boy2.post;};
   case("3"){return boy3.post;};
   case("4"){return boy4.post;};
   case("5"){return boy5.post;};
   case("6"){return boy6.post;};
   case("7"){return boy7.post;};
   case("8"){return boy8.post;};
   case("9"){return boy9.post;};
   case (_) { return "{front end error}"; };
   };

  };
  public func post(name : Text, kis : Text) : async Text {
    if(name == "" ){
      return "pole jest puste";
    }else{
    boy := {kisser = kis; post = name;};
    boy9 := boy8; 
    boy8 := boy7;
    boy7 := boy6;
    boy6 := boy5;
    boy5 := boy4;
    boy4 := boy3;
    boy3 := boy2;
    boy2 := boy1;
    boy1 := boy0; 
    boy0 := boy;
    
    return "wiadomość ," # name # ", została zapisana poprawnie";
    }
  };
  public query func kisser(name : Text) : async Text {
   switch(name){
   case("0"){return boy0.kisser;};
   case("1"){return boy1.kisser;};
   case("2"){return boy2.kisser;};
   case("3"){return boy3.kisser;};
   case("4"){return boy4.kisser;};
   case("5"){return boy5.kisser;};
   case("6"){return boy6.kisser;};
   case("7"){return boy7.kisser;};
   case("8"){return boy8.kisser;};
   case("9"){return boy9.kisser;};
   case (_) { return "{front end error}"; };
   };

  };
  public query func test(name : Text) : async cipi_ciapa{
   switch(name){
   case("0"){return boy0;};
   case("1"){return boy1;};
   case("2"){return boy2;};
   case("3"){return boy3;};
   case("4"){return boy4;};
   case("5"){return boy5;};
   case("6"){return boy6;};
   case("7"){return boy7;};
   case("8"){return boy8;};
   case("9"){return boy9;};
   case (_) { return boy0; };
   };

  };
};