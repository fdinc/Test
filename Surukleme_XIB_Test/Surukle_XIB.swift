//
//  Surukle_XIB_UIView.swift
//  Algoritma_Deneme
//
//  Created by Fatih Dinç on 22/02/17.
//  Copyright © 2017 Fatih Dinç. All rights reserved.
//

import UIKit

@IBDesignable class Surukle_XIB: UIView{

    
    @IBOutlet weak var lbl_Onayla: UIButton!
    @IBOutlet weak var scroll_Cevap: UIScrollView!
    @IBOutlet weak var Cevap_Ekrani: UIView!
    @IBOutlet weak var img_1: ResimSurukle_Xib!
    @IBOutlet weak var img_2: ResimSurukle_Xib!
    @IBOutlet weak var img_3: ResimSurukle_Xib!
    @IBOutlet weak var img_4: ResimSurukle_Xib!
    @IBOutlet weak var img_5: ResimSurukle_Xib!
    
    @IBOutlet weak var img_c1: UIImageView!
    @IBOutlet weak var img_c2: UIImageView!
    @IBOutlet weak var img_c3: UIImageView!
    @IBOutlet weak var img_c4: UIImageView!
    
    var cevapEk1 : UIImageView!
    var cevapEk2 : UIImageView!
    var ok_Ek1 : UIImageView!
    var ok_Ek2 : UIImageView!
    
    @IBOutlet var img_Secenekler: [ResimSurukle_Xib]!
    @IBOutlet var img_cevaplar: [UIImageView]!
    
    var atamalar = [[Int]]()
    var sirasi = [Int]()
    var resimID = [Int]()
    var ilkKontrol = true
    var siram = 1
    
    var img_cevaps : [Int] = []
    var view:UIView!
    
    var id : Int! = 5
    var secim = ""
    var eklendi = false     /////   Yeni eklenen hedefleri kontrol
    
    var cevap = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    
    

    
    
    
    public func resimYukle(sira :Int, cevabi: Int) {    //  sira = sürüklenen resim ID
                                                        //  cevabi = eşleştirilecek ID
        
        
 /*       for aaa in img_cevaplar {
  //      for aaa in img_cevaps {
      
            if aaa.tag ==  cevabi {
                
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
*/
   
        if cevap.tag ==  cevabi {
            
            switch sira {
            case 1:
                cevap.image = img_1.image
            case 2:
                cevap.image = img_2.image
            case 3:
                cevap.image = img_3.image
            case 4:
                cevap.image = img_4.image
            case 5:
                cevap.image = img_5.image
            default:
                break
            }
        }

      /*
        print("Count: ",atamalar.count)
        print("Capacity: ",atamalar.capacity)
        print("Cevap Tag: ",cevap.tag, "Resim Tag: ",cevabi,"Sıra: ",sira)
        
      */  
        
        
    }

    
    
    
    
    func hedefEkle () {
        
        lbl_Onayla.isEnabled = true
        
        
        cevapEk1 = UIImageView(frame: CGRect(x: cevap.frame.origin.x + 60, y: cevap.frame.origin.y, width: 50, height: 50))
     //   cevapEk1.image = #imageLiteral(resourceName: "Oklar")
        cevapEk1.backgroundColor = UIColor(red:203/255.0, green:235/255.0, blue:227/255.0, alpha: 0.5)
        cevapEk1.contentMode = UIViewContentMode.scaleAspectFit
        cevapEk1.tag = cevap.tag + 1
        
        
        cevapEk2 = UIImageView(frame: CGRect(x: cevap.frame.origin.x, y: cevap.frame.origin.y + 60, width: 50, height: 50))
       // cevapEk2.image = #imageLiteral(resourceName: "Altıgen")
        cevapEk2.backgroundColor = UIColor(red:203/255.0, green:235/255.0, blue:227/255.0, alpha: 0.5)
        cevapEk2.contentMode = UIViewContentMode.scaleAspectFit
        cevapEk2.tag = cevap.tag + 1
        
        Cevap_Ekrani.addSubview(cevapEk1)
        Cevap_Ekrani.addSubview(cevapEk2)
        

        ok_Ek1 = UIImageView(frame: CGRect(x: cevap.frame.origin.x + 50, y: cevap.frame.origin.y + 22, width: 10, height: 6))
        ok_Ek1.image = #imageLiteral(resourceName: "sag")
        ok_Ek1.contentMode = UIViewContentMode.scaleAspectFit
        ok_Ek2 = UIImageView(frame: CGRect(x: cevap.frame.origin.x + 22, y: cevap.frame.origin.y + 50, width: 6, height: 10))
        ok_Ek2.image = #imageLiteral(resourceName: "asagi")
        ok_Ek2.contentMode = UIViewContentMode.scaleAspectFit
        
        Cevap_Ekrani.addSubview(ok_Ek1)
        Cevap_Ekrani.addSubview(ok_Ek2)
        
        hedefDegistir()
        img_cevaps.append(id)   /// Eklenen resmin sıra nosu
        

        
        
        
        
  /*      if ilkKontrol {
            resimID.append(id)
            sirasi.append(siram)
            siram += 1
            
            atamalar.append(sirasi)
            atamalar.append(resimID)
            ilkKontrol = false
        }else {
            atamalar[0].append(siram)
            atamalar[1].append(id)
            siram += 1
        }
 */
        /*
         print("Sıra:", atamalar[0])
         print("Resim ID: ", atamalar[1])
         print("Hepsi: ",atamalar)
         print(cevap.tag)
         */
        
        
        
        
        
        
        
        
        
  
        
        
/////////////   Otomatik Scroll içerik Büyütme
        
        //////  UIView  Tasarımdaki Sınırlamalar (Constraints) nedeniyle büyüyemiyor. Çözümü ona göre araştır !!!!!
        
        scroll_Cevap.clipsToBounds = true   // İçerik Scroll'un dışında görünmemesi için
        
        if cevap.frame.origin.x + 60 >= Cevap_Ekrani.frame.size.width && cevap.frame.origin.x + 100 >= scroll_Cevap.contentSize.width {
            
            //Cevap_Ekrani.translatesAutoresizingMaskIntoConstraints = true
            //Cevap_Ekrani.frame.size.width += 60
            
            scroll_Cevap.contentSize.width += 100
            
            
        }else if cevap.frame.origin.y + 60 >= Cevap_Ekrani.frame.size.height && cevap.frame.origin.y + 100 >= scroll_Cevap.contentSize.height{
            
            //Cevap_Ekrani.frame.size.height += 60
            scroll_Cevap.contentSize.height += 100
            
        }
//////////////////////////////////////
        
 
        
        
        
    }
    
    func hedefSil(rota: String){
        
        if eklendi {
            
            eklendi = false
            
            img_1.hedefeBirakildi.removeAll()
            img_1.hedefeBirakildi.append(cevapEk1)
            img_1.hedefeBirakildi.append(cevapEk2)
            img_1.surukle_UIView = self
            
            if rota == "sol"{
                ok_Ek1.removeFromSuperview()
                cevapEk1.removeFromSuperview()
            }else if rota == "sağ"{
                ok_Ek2.removeFromSuperview()
                cevapEk2.removeFromSuperview()
            }
            
           // print("Silme Tamamlandı.")
            
        }
     }
    
    
    func hedefDegistir () {
        
  //      img_cevaplar.append(cevap)          //Cevapları Dizi'ye atış deneme ÇALIŞMADI !!!
       
        
        
        img_1.hedefeBirakildi.removeAll()
        img_2.hedefeBirakildi.removeAll()
        img_3.hedefeBirakildi.removeAll()
        img_4.hedefeBirakildi.removeAll()
        img_5.hedefeBirakildi.removeAll()
        
        img_1.hedefeBirakildi.append(cevapEk1)
        img_1.hedefeBirakildi.append(cevapEk2)
        img_1.surukle_UIView = self
        img_2.hedefeBirakildi.append(cevapEk1)
        img_2.hedefeBirakildi.append(cevapEk2)
        img_2.surukle_UIView = self
        img_3.hedefeBirakildi.append(cevapEk1)
        img_3.hedefeBirakildi.append(cevapEk2)
        img_3.surukle_UIView = self
        img_4.hedefeBirakildi.append(cevapEk1)
        img_4.hedefeBirakildi.append(cevapEk2)
        img_4.surukle_UIView = self
        img_5.hedefeBirakildi.append(cevapEk1)
        img_5.hedefeBirakildi.append(cevapEk2)
        img_5.surukle_UIView = self
        
       
        
        /////   Konum Testi
/*        print("x1: ", cevapEk1.frame.origin.x, "y1: ", cevapEk1.frame.origin.y)
        print("x2: ", cevapEk2.frame.origin.x, "y2: ", cevapEk2.frame.origin.y)
        print("x: ", cevap.frame.origin.x, "y: ", cevap.frame.origin.y)
*/
    }
    
    
    ///////////////////////////////////////////////
 
    
    @IBInspectable var Resim_1: UIImage? {      //Bu tanımlamalar içeriğini ana formdan değiştirebilmek için erişim sağlıyor
        get {
            return img_1.image
        }
        set(Resim_1) {
            img_1.image = Resim_1
        }
    }

/////////////
    
     
    func resim_atama (){    /// Sürükleyeceğin hedefi resimlere atama
 
        img_1.hedefeBirakildi.append(cevap)
        img_1.surukle_UIView = self
        
        img_2.hedefeBirakildi.append(cevap)
        img_2.surukle_UIView = self
        
        img_3.hedefeBirakildi.append(cevap)
        img_3.surukle_UIView = self
        
        img_4.hedefeBirakildi.append(cevap)
        img_4.surukle_UIView = self
        
        img_5.hedefeBirakildi.append(cevap)
        img_5.surukle_UIView = self
        
        
        /*
        img_1.hedefeBirakildi.append(img_c1)
        img_1.hedefeBirakildi.append(img_c2)
        img_1.hedefeBirakildi.append(img_c3)
        img_1.hedefeBirakildi.append(img_c4)
        img_1.surukle_UIView = self
        
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
      */
        
    }
    
    
    func secenek_Yukle (){
        
        img_1.image = #imageLiteral(resourceName: "Elips")
        img_2.image = #imageLiteral(resourceName: "ParalelKenar")
        img_3.image = #imageLiteral(resourceName: "EskenarDortgen")
        img_4.image = #imageLiteral(resourceName: "Dikdortgen")
        img_5.image = #imageLiteral(resourceName: "Altıgen")
        
        
    }

    func baslangic () {
        secenek_Yukle ()    /// Sürüklenecek Seçenekleri Yükle
        cevap.image = #imageLiteral(resourceName: "Dikdortgen")
        cevap.backgroundColor = UIColor.cyan
        cevap.contentMode = UIViewContentMode.scaleAspectFit
        Cevap_Ekrani.addSubview(cevap)
        resim_atama()
        
        
        
 /*
        self.addSubview(cevaplar) //This add it the view controller without constraints
        cevaplar_Constraints() //This function is outside the viewDidLoad function that controls the constraints
*/
    }
    
    var test_silme : ViewController!
    
    
    
    @IBAction func btn_Onayla(_ sender: Any) {
        
        
        sorular_Surukle ()      //Soruları Getirme
        
        if sor1.cevap_surukle_Sekil! == img_cevaps {
            print("Doğru")
        }else{
            print("Yanlış")
        }
        
    }
    
    
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
       
        addSubview(view)
        baslangic()
        
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for:type(of: self))
        let nib = UINib(nibName: "Surukle_XIB", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }


}
