//
//  ResimSurukle.swift
//  Minik_Canavar
//
//  Created by Fatih Dinç on 07/09/16.
//  Copyright © 2016 Fatih Dinç. All rights reserved.
//

import Foundation
import UIKit

class ResimSurukle: UIImageView {
    
    
    //RESİM ÖZELLİKLERİNDEN "User Interraction" Özelliğini açmayı unutma
    
    
    var orjinalPozisyon : CGPoint!
    var hedefeBirak : UIView?
    var hedefeBirak2 : UIView?
    var hedefeBirak3: UIView?
    var hedefeBirak4 : UIView?
    var deneme : Sorular_SurukleVC!
    var deneme2: Surukle_XIB!
    
    
    var hedefeBirakildi = [UIView?] ()
    
    
    var id: Int!
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        orjinalPozisyon = self.center
        deneme.resim_atama()
//        deneme.id = self.tag
        
        //deneme.resim_atama(sira: self.tag, cevap: hedef.tag)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let dokunma = touches.first {
            let pozisyon = dokunma.location(in: self.superview)
            self.center = CGPoint(x: pozisyon.x, y: pozisyon.y)           //Dokunduğun resmin ortasını alma işini garantiye alıyoruz.
        }                                                               //init fonksiyonları çalıştığında yanlış bilgi alabiliyor
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

        for adet in hedefeBirakildi {
        
            if let dokunma = touches.first, let hedef = adet {
            
            //let pozisyon = dokunma.locationInView(self.superview)
                let pozisyon = dokunma.location(in: self.superview?.superview)    //Üsttekinde yatay çevirince sürüklemede canavar yemedi
                if hedef.frame.contains(pozisyon) {
                
                    NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "HedefeBirakildi"), object: nil))
                
                    print(("Bıraktı"))
                    deneme.id = self.tag
                    deneme.resimYukle(sira: self.tag, cevap: hedef.tag)
                
                
                }else {
                    print(("Bırakmadı"))
                
                }
            
            }
        
        }
        
        
        
       
        self.center = orjinalPozisyon       // Dokunma bırakılınca ilk yerine döner
    }
    
    
    
    
    
}
