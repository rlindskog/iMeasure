//
//  ViewController.swift
//  iMeasure
//
//  Created by Benjamin Pust on 4/26/15.
//  Copyright (c) 2015 Ben Pust. All rights reserved.
//

import UIKit
import CoreMotion

var array: Array = [String]()
var distance = 0

class ViewController: UIViewController {
    
    var isMeasurin: Bool = false
    
    @IBAction func button(sender: AnyObject) {
        
        if !isMeasurin {
            isMeasurin = true
            NSNotificationCenter.defaultCenter().addObserver(self, selector: "rotated", name: UIDeviceOrientationDidChangeNotification, object: nil)
        } else {
            println(distance)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rotated()
    {
        if(UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation))
        {
            println("landscape")
            distance += 10
        }
        
        if(UIDeviceOrientationIsPortrait(UIDevice.currentDevice().orientation))
        {
            println("Portrait")
            distance += 5
            
        }
        
    }
    
    
    
}

