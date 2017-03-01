//
//  ResimSurukle_Xib.swift
//  Surukleme_XIB_Test
//
//  Created by Fatih Dinç on 23/02/17.
//  Copyright © 2017 Fatih Dinç. All rights reserved.
//

import UIKit

class ResimSurukle_Xib: UIImageView {

    //RESİM ÖZELLİKLERİNDEN "User Interraction" Özelliğini açmayı unutma
    
    
    var orjinalPozisyon : CGPoint!
    var hedefeBirak : UIView?
    var hedefeBirak2 : UIView?
    var hedefeBirak3: UIView?
    var hedefeBirak4 : UIView?
    
    var surukle_UIView: Surukle_XIB!    //  deneme adını bunla değiştir!!!
    
    
    var hedefeBirakildi = [UIView?] ()
    var hedefeBirakildi2 = [Surukle_XIB?] ()
    
    
    var id: Int!
    var eklendi = false     ////    YEni objenin eklenişini kontrol için
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        orjinalPozisyon = self.center
      
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let dokunma = touches.first {
            let pozisyon = dokunma.location(in: self.superview)
            self.center = CGPoint(x: pozisyon.x, y: pozisyon.y)           //Dokunduğun resmin ortasını alma işini garantiye alıyoruz.
        }                                                               //init fonksiyonları çalıştığında yanlış bilgi alabiliyor
 
    }
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        var rotaa = "boş"
        
        
        for adet in hedefeBirakildi {
            
            
            if let dokunma = touches.first, let hedef = adet {
                
                //let pozisyon = dokunma.location(in: surukle_UIView.scroll_Cevap.superview?.superview)
                let pozisyon = dokunma.location(in: surukle_UIView.Cevap_Ekrani.superview)
                //let pozisyon = dokunma.locationInView(self.superview)
                
                //let pozisyon = dokunma.location(in: self.superview?.superview)    //Üsttekinde yatay çevirince sürüklemede canavar yemedi
                if hedef.frame.contains(pozisyon) {
                    
                    NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "HedefeBirakildi"), object: nil))
                    
                    surukle_UIView.id = self.tag
                    
               /*     print(("Bıraktı"))
                    print("Sıra: ",self.tag, "cevap " , hedef.tag)
                */
                    
          ////////////////////////////////////////  Silinecek Hedef Ayarlanıyor
                    if surukle_UIView.cevapEk1 != nil && surukle_UIView.cevapEk2 != nil {
                        if surukle_UIView.cevapEk1.frame.contains(pozisyon) {
                            surukle_UIView.cevap = surukle_UIView.cevapEk1
                            rotaa = "sağ"
                        } else if surukle_UIView.cevapEk2.frame.contains(pozisyon) {
                            surukle_UIView.cevap = surukle_UIView.cevapEk2
                            rotaa = "sol"
                        }
                    }
               
                    surukle_UIView.resimYukle(sira: self.tag, cevabi: hedef.tag)    // Resimi yeni hedefe attın
                    
                    surukle_UIView.hedefSil(rota: rotaa)
                    surukle_UIView.hedefEkle()
                    surukle_UIView.eklendi = true
          ////////////////////////////////////
                    
                }else {
                 /*   print(("Bırakmadı"))
                    print("x: ", surukle_UIView.cevap.frame.origin.x, "y: ", surukle_UIView.cevap.frame.origin.y)
                    print(pozisyon)
                */
                }
                
            }
            
        }
        
        
        
        
        self.center = orjinalPozisyon       // Dokunma bırakılınca ilk yerine döner
    }
    
    
    
    
    

}
