//
//  ViewController.swift
//  App Anatomy and Life Cycle
//
//  Created by Everett Brothers on 10/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunching: UILabel!
    @IBOutlet weak var configForConnecting: UILabel!
    @IBOutlet weak var sceneWillConnect: UILabel!
    @IBOutlet weak var sceneActive: UILabel!
    @IBOutlet weak var sceneWillResign: UILabel!
    @IBOutlet weak var sceneWillForeground: UILabel!
    @IBOutlet weak var sceneDidBackground: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunching.text = "Application did finish launching \(appDelegate.launchCount) time(s)"
        configForConnecting.text = "Configuration has been used \(appDelegate.configurationForConnectingCount) time(s)"
        sceneWillConnect.text = "Scene will connect \(willConnectCount) time(s)"
        sceneActive.text = "Scene did become active \(didBecomeActiveCount) time(s)"
        sceneWillResign.text = "Scene will resign \(willResignCount) time(s)"
        sceneWillForeground.text = "Scene will enter foreground \(willEnterForegroundCount) time(s)"
        sceneDidBackground.text = "Scene did enter background \(didEnterBackgroundCount) time(s)"
    }

}

