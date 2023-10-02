//
//  ViewController.swift
//  familyProject
//
//  Created by Paul Stewart on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dadPic: UIImageView!
    @IBOutlet weak var momPic: UIImageView!
    @IBOutlet weak var mePic: UIImageView!
    @IBOutlet weak var alexPic: UIImageView!
    @IBOutlet weak var annPic: UIImageView!
    @IBOutlet weak var jamesPic: UIImageView!
    @IBOutlet weak var kariPic: UIImageView!
    @IBOutlet weak var talaPic: UIImageView!
    
    var selectedFamilyMember: FamilyMember?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupPicTap()
    }
    @IBAction func dadTapped(_ sender: Any) {
        selectedFamilyMember = dad
        performSegue(withIdentifier: "toDetailView", sender: nil)
    }
    
    @objc func momPicTapped(_ sender: UITapGestureRecognizer) {
        print("picTapped")
        selectedFamilyMember = mom
        performSegue(withIdentifier: "toDetailView", sender: nil)
    }
    
    @objc func mePicTapped(_ sender: UITapGestureRecognizer) {
        print("picTapped")
        selectedFamilyMember = paul
        performSegue(withIdentifier: "toDetailView", sender: nil)
    }
    
    @objc func alexPicTapped(_ sender: UITapGestureRecognizer) {
        print("picTapped")
        selectedFamilyMember = alex
        performSegue(withIdentifier: "toDetailView", sender: nil)
    }
    
    @objc func annPicTapped(_ sender: UITapGestureRecognizer) {
        print("picTapped")
        selectedFamilyMember = ann
        performSegue(withIdentifier: "toDetailView", sender: nil)
        
    }
    @objc func jamesPicTapped(_ sender: UITapGestureRecognizer) {
        print("picTapped")
        selectedFamilyMember = james
        performSegue(withIdentifier: "toDetailView", sender: nil)
    }
    
    @objc func kariPicTapped(_ sender: UITapGestureRecognizer) {
        print("picTapped")
        selectedFamilyMember = kari
        performSegue(withIdentifier: "toDetailView", sender: nil)
    }
    
    @objc func talaPicTapped(_ sender: UITapGestureRecognizer) {
        print("picTapped")
        selectedFamilyMember = tala
        performSegue(withIdentifier: "toDetailView", sender: nil)
    }
    
    
    func setupPicTap() {
//        let dadPicTap = UITapGestureRecognizer(target: self, action: #selector(self.dadPicTapped(_:)))
//        self.dadPic.isUserInteractionEnabled = true
//        self.dadPic.addGestureRecognizer(dadPicTap)
        
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
        destination?.familyMember = selectedFamilyMember
    }
}

