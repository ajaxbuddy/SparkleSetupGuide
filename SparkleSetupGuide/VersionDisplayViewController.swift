//
//  ViewController.swift
//  SparkleSetupGuide
//
//  Created by Prashant Nigam on 9/25/19.
//  Copyright © 2019 Prashant Nigam. All rights reserved.
//

import Cocoa

class VersionDisplayViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    @IBAction func checkForUpdates(_ sender: Any) {
        
    }
}



extension VersionDisplayViewController {
    static func freshController() -> VersionDisplayViewController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier("VersionDisplayViewController")
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? VersionDisplayViewController else {
            fatalError("Failed to find view controller - Check Main.storyboard")
        }
        return viewcontroller
    }
}
