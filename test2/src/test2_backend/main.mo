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

type Debug = {
  log : Text;
  deb : Text;

};

let offer = Buffer.Buffer<Freedom>(15);

offer.add({ cozaco = "Oferta 1"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });
offer.add({ cozaco = "Oferta 2"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });
offer.add({ cozaco = "Oferta 3"; kontakt = "andzej facebook"; oferta = "sprzedam byc na olx"; kapital = "40000 satosi"; cena = "100000 USD za BTC" });

public query func oferta_cek(marker: Nat) : async Freedom {


let result = offer.get(marker);
};

public query func test() : async Freedom {


let result = offer.get(0);
};


public func oferta_add(cozaco: Text, kontakt: Text, oferta: Text, kapital: Text, cena: Text,) : async Debug {

let x = offer.remove(0);
offer.add({ cozaco = cozaco; kontakt = kontakt; oferta = oferta; kapital = kapital; cena = cena });

return({log = "OK"; deb = "oferta dodana"});
<<<<<<< Updated upstream

};


=======
>>>>>>> Stashed changes
};
};