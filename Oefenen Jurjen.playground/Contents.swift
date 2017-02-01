//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// arrays in swift

var werknemer1Salaris = 1600.00
var werknemer2Salaris = 1400.00
var werknemer3Salaris = 2000.00

var werknemerSalaris: [Double] = [1600.00, 1400.00, 2000.00]

// aantal values uit array berekenen

print(werknemerSalaris.count)

// iets toevoegen aan array

werknemerSalaris.append(2100.00)

print(werknemerSalaris.count)

// om de tweede uit de array te halen (array starten altijd op 0)

werknemerSalaris.remove(at: 1)

var studenten = [String]()

print (studenten.count)

studenten.append("Jurjen Borkent")
studenten.append("Charlotte Voskuilen")
studenten.append("Gerbrich Jongbloed")
studenten.append("Coos Pot")
studenten.append("Jochem Stoer")

studenten.remove(at: 2)

// Gerbrich mag er niet bij

print (studenten)

// functies in swift

// vorm 1 

var lengte = 5
var breedte = 10

var oppervlake = lengte * breedte

// vorm 2

var lengte2 = 6
var breedte2 = 12

var oppervlakte2 = lengte2 * breedte2

// vorm 3 

var lengte3 = 3
var breedte3 = 8

var opppervlakte3 = lengte3 * breedte3

// dit is omslachtig en dit kan met deze funtie sneller.

func berekenOppervlakte(lengte: Int, breedte: Int) -> Int {
    let oppervlakte = lengte * breedte
    
    return oppervlakte
}

let oppervlakte = berekenOppervlakte(lengte: 10, breedte: 50)
let vorm1 = berekenOppervlakte(lengte: 50, breedte: 100)
let vorm2 = berekenOppervlakte(lengte: 10, breedte: 6)

var bankRekeningSaldo = 200.00
var nieuweSchoenen = 140.00


// functie om aankopen te doen

func aankoopProduct(huidigSaldo: Double, productPrijs: Double) -> Double {
    if productPrijs <= huidigSaldo {
        print("Aankoop gekocht voor : \(productPrijs)")
        return huidigSaldo - productPrijs
    } else {
        print("Je hebt geen geld")
        return huidigSaldo
    }
}

bankRekeningSaldo = aankoopProduct(huidigSaldo: bankRekeningSaldo, productPrijs: nieuweSchoenen)

var battlefield = 40.00

bankRekeningSaldo = aankoopProduct(huidigSaldo: bankRekeningSaldo, productPrijs: battlefield)

// booleans in swift

var isJurjenDeBesteInSwift: Bool = false

if true == false || true == true {
    print("hoi")
}

var dataIsKlaarMetDownloaden: Bool = false
// ......
if !dataIsKlaarMetDownloaden {
    print("is nog aan het downloaden")
}
dataIsKlaarMetDownloaden = true
// open nu de data (zo kan dit dus toegepast worden)

// Operators!

// == Gelijk aan
// != Niet gelijk aan
// > groter dan
// >= groter dan of gelijk aan
// < kleiner dan
// <= kleiner dan of gelijk aan

var saldo = 300
var teKopenProduct = 200

if saldo >= teKopenProduct {
    print("Je hebt genoeg geld")
}       else {
    print("Je hebt te weinig geld")
}


// 









