//
//  DetailViewController.swift
//  familyProject
//
//  Created by Paul Stewart on 9/29/23.
//

import UIKit

class DetailViewController: UIViewController {

    //main view controller outlet references
    
    var newViewControllerTitle = "initial value"
    var newImageName = ""
    var nameLabelText = ""
    var ageLabelText = ""
    var favShowLabelText = ""
    var favDrinkLabelText = ""
    var carImageName = ""
    
    // outlets
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var favShowLabel: UILabel!
    
    @IBOutlet weak var favDrinkLabel: UILabel!
    
    @IBOutlet weak var dreamCar: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // outlet.text =
        mainImage.image = UIImage(named: newImageName)
        nameLabel.text = nameLabelText
        ageLabel.text = ageLabelText
        favShowLabel.text = favShowLabelText
        favDrinkLabel.text = favDrinkLabelText
        dreamCar.image = UIImage(named: carImageName)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
