//
//  ViewController.swift
//  application_lifecycle
//
//  Created by Paul Stewart on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    //vars
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    var appFinishedLaunchingWithOptionsCount = 0
    var sceneWillConnectCount = 0
    var sceneDidBecomeActiveCount = 0
    var sceneWillResignActiveCount = 0
    var sceneWillEnterForegroundCount = 0
    var sceneDidEnterBackgroundCount = 0
    //outlets
    @IBOutlet weak var appFinishedLaunchingWithOptionsLabel: UILabel!
    @IBOutlet weak var appConfigurationLabel: UILabel!
    
    @IBOutlet weak var sceneWillConnectLabel: UILabel!
    
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        appFinishedLaunchingWithOptionsLabel.text = "App has launched \(appDelegate.launchCount) times"
        appConfigurationLabel.text = "App has configured for connecting  \(appDelegate.configurationForConnectingCount) times"
        sceneWillConnectLabel.text = "Scene will connect \(sceneWillConnectCount) times"
        sceneDidBecomeActiveLabel.text = "Scene did become active \(sceneDidBecomeActiveCount) times"
        sceneWillResignActiveLabel.text = "Scene will resign active \(sceneWillResignActiveCount) times"
        sceneWillEnterForegroundLabel.text = "Scene will enter foreground \(sceneWillEnterForegroundCount) times"
        sceneDidEnterBackgroundLabel.text = "Scene did enter background \(sceneDidEnterBackgroundCount) times"
    }


}

