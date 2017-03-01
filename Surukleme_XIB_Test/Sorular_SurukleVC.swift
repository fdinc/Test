//
//  ViewController.swift
//  Surukle
//
//  Created by Fatih Dinç on 20/10/16.
//  Copyright © 2016 Fatih Dinç. All rights reserved.
//

import UIKit

class Sorular_SurukleVC: UIViewController {

    @IBOutlet weak var lbl_Soru: UILabel!
    @IBOutlet weak var lbl_Sonuc: UIButton!
    
   
    @IBOutlet weak var img_1: ResimSurukle!
    @IBOutlet weak var img_2: ResimSurukle!
    @IBOutlet weak var img_3: ResimSurukle!
    @IBOutlet weak var img_4: ResimSurukle!
    
    @IBOutlet weak var img_c1: UIImageView!
    @IBOutlet weak var img_c2: UIImageView!
    @IBOutlet weak var img_c3: UIImageView!
    @IBOutlet weak var img_c4: UIImageView!
    
    @IBOutlet weak var stack_Cevap: UIStackView!
    
    var id : Int = 0
    var secim = ""

    @IBOutlet var img_cevaplar: [UIImageView]!
    @IBOutlet var img_Secenekler: [ResimSurukle]!
    
    
    @IBOutlet weak var scroll_icerik: UIScrollView!
    
    public func resimYukle(sira :Int, cevap: Int) {
        
 /*
        switch sira {
        case 1:
            img_c1.image = img_1.image
        case 2:
            img_c1.image = img_2.image
        case 3:
            img_c1.image = img_3.image
        case 4:
            img_c1.image = img_4.image
        default:
            break
        }
        
   */
        
        for aaa in img_cevaplar {
            
            if aaa.tag ==  cevap {
                
                switch sira {
                case 1:
                    aaa.image = img_1.image
                case 2:
                    aaa.image = img_2.image
                case 3:
                    aaa.image = img_3.image
                case 4:
                    aaa.image = img_4.image
                default:
                    break
                }
            }
         }
       
        
    }

    
    
    func resim_atama (){
     /*
        for aaa in img_cevaplar {
            for sss in img_Secenekler {
                
            
                if sss.tag == aaa.tag {
                    switch id {
                    case 1:
                        sss.hedefeBirak = img_c1
                        sss.deneme = self
                    case 2:
                        sss.hedefeBirak = img_c2
                        sss.deneme = self
                    case 3:
                        sss.hedefeBirak = img_c3
                        sss.deneme = self
                    case 4:
                        sss.hedefeBirak = img_c4
                        sss.deneme = self
                    default:
                        break
                    }
                
                }else {
                    print("hiç girmedi")
                }
            }
            
            
        }
    */
 
        img_1.hedefeBirakildi.append(img_c1)
        img_1.hedefeBirakildi.append(img_c2)
        img_1.hedefeBirakildi.append(img_c3)
        img_1.hedefeBirakildi.append(img_c4)
        img_1.deneme = self
        
        img_2.hedefeBirakildi.append(img_c1)
        img_2.hedefeBirakildi.append(img_c2)
        img_2.hedefeBirakildi.append(img_c3)
        img_2.hedefeBirakildi.append(img_c4)
        img_2.deneme = self

        img_3.hedefeBirakildi.append(img_c1)
        img_3.hedefeBirakildi.append(img_c2)
        img_3.hedefeBirakildi.append(img_c3)
        img_3.hedefeBirakildi.append(img_c4)
        img_3.deneme = self

        img_4.hedefeBirakildi.append(img_c1)
        img_4.hedefeBirakildi.append(img_c2)
        img_4.hedefeBirakildi.append(img_c3)
        img_4.hedefeBirakildi.append(img_c4)
        img_4.deneme = self

/*
        img_1.hedefeBirak = img_c1
        img_1.hedefeBirak2 = img_c2
        img_1.hedefeBirak3 = img_c3
        img_1.hedefeBirak4 = img_c4
        img_1.deneme = self
 
        img_2.hedefeBirak = img_c1
        img_2.hedefeBirak2 = img_c2
        img_2.hedefeBirak3 = img_c3
        img_2.hedefeBirak4 = img_c4
        img_2.deneme = self
        
        img_3.hedefeBirak = img_c1
        img_3.hedefeBirak2 = img_c2
        img_3.hedefeBirak3 = img_c3
        img_3.hedefeBirak4 = img_c4
        img_3.deneme = self
        
        img_4.hedefeBirak = img_c1
        img_4.hedefeBirak2 = img_c2
        img_4.hedefeBirak3 = img_c3
        img_4.hedefeBirak4 = img_c4
        img_4.deneme = self
*/ 
   
    }
    
    func secenek_Yukle (){
        
        img_1.image = #imageLiteral(resourceName: "Elips")
        img_2.image = #imageLiteral(resourceName: "ParalelKenar")
        img_3.image = #imageLiteral(resourceName: "EskenarDortgen")
        img_4.image = #imageLiteral(resourceName: "Dikdortgen")

        
    }
    
    func sonuc_Kontrol () {
      
    if img_c1.image != nil && img_c2.image != nil && img_c3.image != nil && img_c4.image != nil {
        
        switch (img_c1.image)! {
        case #imageLiteral(resourceName: "Elips"):
            secim += "1"
        case #imageLiteral(resourceName: "EskenarDortgen"):
            secim += "3"
        case #imageLiteral(resourceName: "ParalelKenar"):
            secim += "2"
        case #imageLiteral(resourceName: "Dikdortgen"):
            secim += "4"
        default:
            secim += "0"
        }
       
        switch (img_c2.image)! {
        case #imageLiteral(resourceName: "Elips"):
            secim += "1"
        case #imageLiteral(resourceName: "EskenarDortgen"):
            secim += "3"
        case #imageLiteral(resourceName: "ParalelKenar"):
            secim += "2"
        case #imageLiteral(resourceName: "Dikdortgen"):
            secim += "4"
        default:
            secim += "0"
        }

        switch (img_c3.image)! {
        case #imageLiteral(resourceName: "Elips"):
            secim += "1"
        case #imageLiteral(resourceName: "EskenarDortgen"):
            secim += "3"
        case #imageLiteral(resourceName: "ParalelKenar"):
            secim += "2"
        case #imageLiteral(resourceName: "Dikdortgen"):
            secim += "4"
        default:
            secim += "0"
        }

        switch (img_c4.image)! {
        case #imageLiteral(resourceName: "Elips"):
            secim += "1"
        case #imageLiteral(resourceName: "EskenarDortgen"):
            secim += "3"
        case #imageLiteral(resourceName: "ParalelKenar"):
            secim += "2"
        case #imageLiteral(resourceName: "Dikdortgen"):
            secim += "4"
        default:
            secim += "0"
        }

    } //if bloğu
        
       /*
        if img_c1.image == #imageLiteral(resourceName: "Elips") {
            secim += "1"
        } else if img_c1.image == #imageLiteral(resourceName: "ParalelKenar"){
            secim += "2"
        }else if img_c1.image == #imageLiteral(resourceName: "EskenarDortgen"){
            secim += "3"
        }else if img_c1.image == #imageLiteral(resourceName: "Dikdortgen"){
            secim += "4"
        } else {
            secim += "0"
        }
        
        if img_c2.image == #imageLiteral(resourceName: "Elips") {
            secim += "1"
        } else if img_c2.image == #imageLiteral(resourceName: "ParalelKenar"){
            secim += "2"
        }else if img_c2.image == #imageLiteral(resourceName: "EskenarDortgen"){
            secim += "3"
        }else if img_c2.image == #imageLiteral(resourceName: "Dikdortgen"){
            secim += "4"
        } else {
            secim += "0"
        }

        if img_c3.image == #imageLiteral(resourceName: "Elips") {
            secim += "1"
        } else if img_c3.image == #imageLiteral(resourceName: "ParalelKenar"){
            secim += "2"
        }else if img_c3.image == #imageLiteral(resourceName: "EskenarDortgen"){
            secim += "3"
        }else if img_c3.image == #imageLiteral(resourceName: "Dikdortgen"){
            secim += "4"
        } else {
            secim += "0"
        }

        if img_c4.image == #imageLiteral(resourceName: "Elips") {
            secim += "1"
        } else if img_c4.image == #imageLiteral(resourceName: "ParalelKenar"){
            secim += "2"
        }else if img_c4.image == #imageLiteral(resourceName: "EskenarDortgen"){
            secim += "3"
        }else if img_c4.image == #imageLiteral(resourceName: "Dikdortgen"){
            secim += "4"
        } else {
            secim += "0"
        }

*/
    }
    
    @IBAction func btn_Geri(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func btn_Onayla(_ sender: AnyObject) {
        sonuc_Kontrol()
        sorular_Surukle ()
        print(secim)
        print(sor1.cevap_surukle)
        if secim ==  sor1.cevap_surukle{
            lbl_Sonuc.setTitle("Tebrikler", for: .normal)
            
        }else {
            lbl_Sonuc.setTitle("Yanlış Cevap", for: .normal)
            
        }
        lbl_Sonuc.isHidden = false
        for ss in img_cevaplar {
            ss.image = nil
        }
        secim = ""
    }

    @IBAction func btn_Sonuc(_ sender: AnyObject) {
        lbl_Sonuc.isHidden = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
        scroll_icerik.contentSize.height = stack_Cevap.frame.size.height + 20
            //Scroll yüksekliğini ayarladık
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        lbl_Sonuc.setTitle("", for: .normal)
        secenek_Yukle()
        resim_atama()
        sorular_Surukle ()
        lbl_Soru.text = sor1.soru
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

