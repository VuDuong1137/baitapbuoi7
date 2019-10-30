//
//  ViewController.swift
//  Timer
//
//  Created by Dương chãng on 10/28/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit



enum Time  {
    case start
    case pause
}
class ViewController: UIViewController {
    
    @IBOutlet weak var lblUilabel: UILabel!
    var timer: Timer!
    var time = 0
    var type : Time = .start
    
    
    
    
    @IBOutlet weak var StartUIButton: UIButton!
    
    @IBOutlet weak var RestartUbutton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runtime), userInfo: nil, repeats: true)
        
    }
    func initTimer() {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runtime), userInfo: nil, repeats: true)
    }
    
    @objc func runtime(){
        time += 1
        lblUilabel.text = String(time)
    }
    
    
    
    @IBAction func onStart(_ sender: Any) {
        if type == Time.start{
            initTimer()
            StartUIButton.setTitle("pause", for: .normal)
            type = Time.pause
        }else {
            StartUIButton.setTitle("Start", for: .normal)
            type = Time.start
            timer.invalidate()
        }
    }
    
    
    
    
    @IBAction func onRestart(_ sender: Any) {
        time = 0
        lblUilabel.text = String(time)
        timer.invalidate()
        
        
        
    }
    
    
}

