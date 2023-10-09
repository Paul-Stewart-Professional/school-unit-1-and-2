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
    
    @IBOutlet weak var postsMentionsSegment: UISegmentedControl!
    
    @IBOutlet weak var mentionsView: UIView!
    
    @IBOutlet weak var postsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        postsPFP.makeRounded()
        postsBackgroundImage.givePicBorder()
//        postsMentionsSegment.setHeight()
        postsViewOn()
    }
    func postsViewOn() {
        self.postsView.isHidden = false
        self.mentionsView.isHidden = true
    }
    func mentionsViewOn() {
        self.postsView.isHidden = true
        self.mentionsView.isHidden = false
    }
    
    

    @IBAction func postsMentionsSegmentToggled(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            postsViewOn()
        } else if sender.selectedSegmentIndex == 1 {
            mentionsViewOn()
        }
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
