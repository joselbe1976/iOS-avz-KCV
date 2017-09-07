//
//  ViewController.swift
//  Cards
//
//  Created by Diego Freniche Brito on 05/09/2017.
//  Copyright © 2017 KC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myClosure: () -> () = {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myClosure = {
            self.doSomething()
        }
        myClosure()
    }
    
    
    

    func doSomething() {
        print("Hello")
    }


}

