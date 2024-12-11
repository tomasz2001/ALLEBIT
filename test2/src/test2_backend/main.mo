import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Time "mo:base/Time";


actor{

type Freedom = {
   cozaco : Text;
   kontakt : Text;
   oferta : Text;
   kapital : Text;
   cena : Text;

   };

type Debug = {
  log : Text;
  deb : Text;

};

let delay : Nat = 1_620_000_000_000;
var time : Int = Time.now();
var meit : Nat = 1;

let offer = Buffer.Buffer<Freedom>(15);

offer.add({ cozaco = "Oferta 1"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });
offer.add({ cozaco = "Oferta 2"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });
offer.add({ cozaco = "Oferta 3"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });
offer.add({ cozaco = "Oferta 4"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });
offer.add({ cozaco = "Oferta 5"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });
offer.add({ cozaco = "Oferta 6"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });

public query func oferta_cek(marker: Nat) : async Freedom {


let result = offer.get(marker);
};

public query func test() : async Freedom {


let result = offer.get(0);
};


public func oferta_add(cozaco: Text, kontakt: Text, oferta: Text, kapital: Text, cena: Text,) : async Debug {
if (Text.size(cozaco) == 0 or Text.size(kontakt) == 0 or Text.size(oferta) == 0 or Text.size(kapital) == 0 or Text.size(cena) == 0) {
 return({log = "ER"; deb = "przynajmniej jedno pole jest puste"});
};

let x = offer.remove(0);
offer.add({ cozaco = cozaco; kontakt = kontakt; oferta = oferta; kapital = kapital; cena = cena });
let time = Time.now();
return({log = "OK"; deb = "oferta dodana"});
};
};

