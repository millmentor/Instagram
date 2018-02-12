//
//  ViewController.swift
//  Instagram
//
//  Created by Renato Oliveira Fraga on 2/11/18.
//  Copyright © 2018 iOSDevStudio. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gameScore = PFObject(className:"GameScore")
        gameScore["score"] = 1337
        gameScore["playerName"] = "Sean Plott"
        gameScore["cheatMode"] = false
        gameScore.saveInBackground {
            (success, error) in
            if (success) {
                print("Sucess")
            } else {
                print("Failed")
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

