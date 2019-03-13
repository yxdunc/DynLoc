//
//  ViewController.swift
//  DynLoc
//
//  Created by Robin Guignard-Perret on 03/13/2019.
//  Copyright (c) 2019 Robin Guignard-Perret. All rights reserved.
//

import UIKit
import DynLoc

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DynLocalization.changeLocalization(language: nil)
    }
    
    @IBAction func englishButton(_ sender: UIButton) {
        DynLocalization.changeLocalization(language: "en")
        print ("En")
    }
    
    @IBAction func frenchButton(_ sender: UIButton) {
        DynLocalization.changeLocalization(language: "fr")
        print ("Fr")
    }
    
}

