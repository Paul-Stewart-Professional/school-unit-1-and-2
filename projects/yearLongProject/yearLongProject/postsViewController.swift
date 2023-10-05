//
//  postsViewController.swift
//  yearLongProject
//
//  Created by Paul Stewart on 10/5/23.
//

import UIKit

class postsViewController: UIViewController {
    
    @IBOutlet weak var postsPFP: UIImageView!
    
    @IBOutlet weak var postsBackgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        postsPFP.makeRounded()
        postsBackgroundImage.givePicBorder()
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
