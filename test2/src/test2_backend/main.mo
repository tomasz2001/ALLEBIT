import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
actor{
type Freedom = {
   cozaco : Text;
   kontakt : Text;
   oferta : Text;
   kapital : Text;
   cena : Text;

   };

let offer = Buffer.Buffer<Freedom>(15);

offer.add({ cozaco = "Oferta 1"; kontakt = "Bitcoin"; oferta = "10000"; kapital = "Bitcoin"; cena = "10000" });

public query func oferta_cek(marker: Nat) : async Freedom {


let result = offer.get(marker);
};

public query func test() : async Freedom {


let result = offer.get(0);
};


//public func oferta_add(licz: Text) : async Text {
     

//};
};