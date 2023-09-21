//
//  MiddleViewController.swift
//  orderOfEvents
//
//  Created by Paul Stewart on 9/18/23.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var middleLabel: UILabel!
    
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       updateEventNumber(from: "viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    func updateEventNumber(from: String) {
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
        }
        eventNumber += 1
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateEventNumber(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateEventNumber(from: "viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        updateEventNumber(from: "viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        updateEventNumber(from: "viewDidDisappear")
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
