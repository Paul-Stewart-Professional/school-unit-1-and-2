//
//  ViewController.swift
//  familyProject
//
//  Created by Paul Stewart on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    var whichPictWasTapped = ""
    
    struct Dad {
        var age = 42
        var name = "Richard Stewart"
        var favShow = "The Orville"
        var favDrink = "Dr Pepper"
    }
    
    var dadVar = Dad()
    
    struct Mom {
        var age = 41
        var name = "Jennifer Stewart"
        var favShow = "When Calls The Heart"
        var favDrink = "Apricot Nectar"
    }
    var momVar = Mom()
    struct Paul {
        var age = 17
        var name = "Paul Stewart"
        var favShow = "Ghost Stories"
        var favDrink = "Dr Pepper"
    }
    var paulVar = Paul()
    struct Alex {
        var age = 15
        var name = "Alexander Stewart"
        var favShow = "One Piece"
        var favDrink = "Dr Pepper"
    }
    var alexVar = Alex()
    struct Ann {
        var age = 11
        var name = "Annalynn Stewart"
        var favShow = "Psych"
        var favDrink = "Strawberry Fanta"
    }
    var annVar = Ann()
    struct James {
        var age = 8
        var name = "James Stewart"
        var favShow = "Gravity Falls"
        var favDrink = "Raspberry Cream Soda"
    }
    var jamesVar = James()
    struct Kari {
        var age = 6
        var name = "Kari Stewart"
        var favShow = "Walker Texas Ranger"
        var favDrink = "Root Beer"
    }
    var kariVar = Kari()
    
    struct Tala {
        var age = 4
        var name = "Tala"
        var favActivity = "Car rides"
        var favTreat = "Kari's Birthday Cake"
    }
    var talaVar = Tala()
    
    @IBOutlet weak var dadPic: UIImageView!
    
    @IBOutlet weak var momPic: UIImageView!
    
    @IBOutlet weak var mePic: UIImageView!
    
    @IBOutlet weak var alexPic: UIImageView!
    
    @IBOutlet weak var annPic: UIImageView!
    
    @IBOutlet weak var jamesPic: UIImageView!
    
    @IBOutlet weak var kariPic: UIImageView!
    
    @IBOutlet weak var talaPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupPicTap()
    }
    @objc func dadPicTapped(_ sender: UITapGestureRecognizer) {
            print("picTapped")
        whichPictWasTapped = "dad"
        performSegue(withIdentifier: "toDetailView", sender: nil)
        
        }
    @objc func momPicTapped(_ sender: UITapGestureRecognizer) {
            print("picTapped")
        whichPictWasTapped = "mom"
        performSegue(withIdentifier: "toDetailView", sender: nil)
        
        }
    @objc func mePicTapped(_ sender: UITapGestureRecognizer) {
            print("picTapped")
        whichPictWasTapped = "me"
        performSegue(withIdentifier: "toDetailView", sender: nil)

        }
    @objc func alexPicTapped(_ sender: UITapGestureRecognizer) {
            print("picTapped")
        whichPictWasTapped = "alex"
        performSegue(withIdentifier: "toDetailView", sender: nil)
        
        }
    @objc func annPicTapped(_ sender: UITapGestureRecognizer) {
            print("picTapped")
        whichPictWasTapped = "ann"
        performSegue(withIdentifier: "toDetailView", sender: nil)
        
        }
    @objc func jamesPicTapped(_ sender: UITapGestureRecognizer) {
            print("picTapped")
        whichPictWasTapped = "james"
        performSegue(withIdentifier: "toDetailView", sender: nil)
        
        }
    @objc func kariPicTapped(_ sender: UITapGestureRecognizer) {
            print("picTapped")
        whichPictWasTapped = "kari"
        performSegue(withIdentifier: "toDetailView", sender: nil)
        
        }
    @objc func talaPicTapped(_ sender: UITapGestureRecognizer) {
            print("picTapped")
        whichPictWasTapped = "tala"
        performSegue(withIdentifier: "toDetailView", sender: nil)
        
        }
        
        func setupPicTap() {
            let dadPicTap = UITapGestureRecognizer(target: self, action: #selector(self.dadPicTapped(_:)))
            self.dadPic.isUserInteractionEnabled = true
            self.dadPic.addGestureRecognizer(dadPicTap)
            
            let momPicTap = UITapGestureRecognizer(target: self, action: #selector(self.momPicTapped(_:)))
            self.momPic.isUserInteractionEnabled = true
            self.momPic.addGestureRecognizer(momPicTap)
            
            let mePicTap = UITapGestureRecognizer(target: self, action: #selector(self.mePicTapped(_:)))
            self.mePic.isUserInteractionEnabled = true
            self.mePic.addGestureRecognizer(mePicTap)
            
            let alexPicTap = UITapGestureRecognizer(target: self, action: #selector(self.alexPicTapped(_:)))
            self.alexPic.isUserInteractionEnabled = true
            self.alexPic.addGestureRecognizer(alexPicTap)
            
            let annPicTap = UITapGestureRecognizer(target: self, action: #selector(self.annPicTapped(_:)))
            self.annPic.isUserInteractionEnabled = true
            self.annPic.addGestureRecognizer(annPicTap)
            
            let jamesPicTap = UITapGestureRecognizer(target: self, action: #selector(self.jamesPicTapped(_:)))
            self.jamesPic.isUserInteractionEnabled = true
            self.jamesPic.addGestureRecognizer(jamesPicTap)
            
            let kariPicTap = UITapGestureRecognizer(target: self, action: #selector(self.kariPicTapped(_:)))
            self.kariPic.isUserInteractionEnabled = true
            self.kariPic.addGestureRecognizer(kariPicTap)
            
            let talaPicTap = UITapGestureRecognizer(target: self, action: #selector(self.talaPicTapped(_:)))
            self.talaPic.isUserInteractionEnabled = true
            self.talaPic.addGestureRecognizer(talaPicTap)
        }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as? DetailViewController

        if whichPictWasTapped == "dad" {
            destination!.newViewControllerTitle = "Richard"
            destination!.newImageName = "dad"
            destination!.nameLabelText = dadVar.name
            destination!.ageLabelText = "Age: \(dadVar.age)"
            destination!.favShowLabelText = "Fav show: \(dadVar.favShow)"
            destination!.favDrinkLabelText = "Fav drink: \(dadVar.favDrink)"
            destination!.carImageName = "36_auburn_speedster"
            
        } else if whichPictWasTapped == "mom" {
            destination!.newViewControllerTitle = "Jennifer"
            destination!.newImageName = "mom"
            destination!.nameLabelText = momVar.name
            destination!.ageLabelText = "Age: \(momVar.age)"
            destination!.favShowLabelText = "Fav show: \(momVar.favShow)"
            destination!.favDrinkLabelText = "Fav drink: \(momVar.favDrink)"
            destination!.carImageName = "srt_hellcat"
            
        } else if whichPictWasTapped == "me" {
            destination!.newViewControllerTitle = "Paul"
            destination!.newImageName = "me"
            destination!.nameLabelText = paulVar.name
            destination!.ageLabelText = "Age: \(paulVar.age)"
            destination!.favShowLabelText = "Fav show: \(paulVar.favShow)"
            destination!.favDrinkLabelText = "Fav drink: \(paulVar.favDrink)"
            destination!.carImageName = "gt3rs_992"
            
        } else if whichPictWasTapped == "alex" {
            destination!.newViewControllerTitle = "Alex"
            destination!.newImageName = "alex"
            destination!.nameLabelText = alexVar.name
            destination!.ageLabelText = "Age: \(alexVar.age)"
            destination!.favShowLabelText = "Fav show: \(alexVar.favShow)"
            destination!.favDrinkLabelText = "Fav drink: \(alexVar.favDrink)"
            destination!.carImageName = "acrx"
            
        } else if whichPictWasTapped == "ann" {
            destination!.newViewControllerTitle = "Annalynn"
            destination!.newImageName = "ann"
            destination!.nameLabelText = annVar.name
            destination!.ageLabelText = "Age: \(annVar.age)"
            destination!.favShowLabelText = "Fav show: \(annVar.favShow)"
            destination!.favDrinkLabelText = "Fav drink: \(annVar.favDrink)"
            destination!.carImageName = "bmw_i8"
            
        } else if whichPictWasTapped == "james" {
            destination!.newViewControllerTitle = "James"
            destination!.newImageName = "james"
            destination!.nameLabelText = jamesVar.name
            destination!.ageLabelText = "Age: \(jamesVar.age)"
            destination!.favShowLabelText = "Fav show: \(jamesVar.favShow)"
            destination!.favDrinkLabelText = "Fav drink: \(jamesVar.favDrink)"
            destination!.carImageName = "miata"
            
        } else if whichPictWasTapped == "kari" {
            destination!.newViewControllerTitle = "Kari"
            destination!.newImageName = "kari"
            destination!.nameLabelText = kariVar.name
            destination!.ageLabelText = "Age: \(kariVar.age)"
            destination!.favShowLabelText = "Fav show: \(kariVar.favShow)"
            destination!.favDrinkLabelText = "Fav drink: \(kariVar.favDrink)"
            destination!.carImageName = "lambo_aventador"
            
        } else if whichPictWasTapped == "tala" {
            destination!.newViewControllerTitle = "Tala"
            destination!.newImageName = "tala"
            destination!.nameLabelText = "Tala"
            destination!.ageLabelText = "\(talaVar.age)"
            destination!.favShowLabelText = "Fav activity: \(talaVar.favActivity)"
            destination!.favDrinkLabelText = "Fav snack: \(talaVar.favTreat)"
            destination!.carImageName = "lr3"
        }
    }
}

