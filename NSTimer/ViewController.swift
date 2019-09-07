//
//  ViewController.swift
//  NSTimer
//
//  Created by Mohamed on 9/6/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var counterLabel: UILabel!
    
    var timer = Timer()
    
    var duration = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    
        
        
    }
    
    @objc func handleTimer(){
        
    }


    @IBAction func btn_stop(_ sender: UIButton) {
    
        timer.invalidate()
    }
    
    
    @IBAction func btn_play(_ sender: UIButton) {
        
      createTimer()
    }
    
    func createTimer(){
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (_) in
            
        self.duration += 1
            
            self.counterLabel.text = String(self.duration)
            
        })
        
    }
}

