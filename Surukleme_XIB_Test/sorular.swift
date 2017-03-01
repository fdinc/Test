//
//  sorular.swift
//  Algoritma_Deneme
//
//  Created by Fatih Dinç on 12/10/16.
//  Copyright © 2016 Fatih Dinç. All rights reserved.
//

import UIKit
import Foundation

class Soru {
    var  soru: String?
    var  sk1: AnyObject?
    var  sk2: AnyObject?
    var  sk3: AnyObject?
    var  sk4: AnyObject?
    var  cevap: Int!
    var  cevap_surukle : String!
    var  cevap_surukle_Sekil : [Int]?
}

var sor1 = Soru ()
var sor2 = Soru ()


func Sorular_resimli (){
    sor1.soru = "Aşağıdaki şekillerden hangisi karar için kullanılır?"
    sor1.sk1 = #imageLiteral(resourceName: "Altıgen")
    sor1.sk2 = #imageLiteral(resourceName: "EskenarDortgen")
    sor1.sk3 = #imageLiteral(resourceName: "Elips")
    sor1.sk4 = #imageLiteral(resourceName: "Oklar")
    sor1.cevap_surukle = "0100"
}

func Sorular_metin () {
    sor1.soru = "1- Aşağıdaki şekillerden hangisi karar için kullanılır?"
    sor1.sk1 = "şağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanı" as AnyObject?
    sor1.sk2 = "şağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanı" as AnyObject?
    sor1.sk3 = "şağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanı" as AnyObject?
    sor1.sk4 = "şağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanışağıdaki şekillerden hangisi karar için kullanı" as AnyObject?
    sor1.cevap = 4
    
    sor2.soru = "\tVize=60 \n\tFinal=70 \n\tOrtalama=(Vize*40/100)+(Final*60/100)\n\tprint(Ortalama)\n " +
    "Yukarıdaki aktarma işlemlerinin sonucunda ekrana gelen sonuç nedir?\n"
    sor2.sk1 = "Ortalama = 56" as AnyObject?
    sor2.sk2 = "Ortalama = 66" as AnyObject?
    sor2.sk3 = "66" as AnyObject?
    sor2.sk4 = "56" as AnyObject?
    sor2.cevap_surukle = "0010"
}

func sorular_Surukle () {
    
    sor1.soru = "1- Aşağda verilen, klavyeden girilen 2 sayının toplamını bulan programın algoritmanın akış diyagramını oluşturunuz.\n" +
    "\t 1. Başla\n \t 2. Oku Sayi1, Sayi2\n \t 3. Toplam= Sayi1+Sayi2\n \t 4. Bitir"
    sor1.cevap_surukle_Sekil = [1,2,4,1]
    
}
