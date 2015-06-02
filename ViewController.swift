//
//  ViewController.swift
//  Stopwatch
//
//  Created by Christine Rose on 6/1/15.
//  Copyright (c) 2015 Christine Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var count = 0
    
    func updateTime() {
        count++
        
        seconds.text = "\(count)"
        //putting this up here showed the count. 
        //I originally had it in the start function below
        //***PLACEMENT MAKES A HUGE DIFFERENCE**
        
        println(count)
    }

    @IBOutlet weak var seconds: UILabel!
    
   
    @IBAction func start(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTime", userInfo: nil, repeats: true)
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
    }
  
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        count = 0
        seconds.text = "0"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

