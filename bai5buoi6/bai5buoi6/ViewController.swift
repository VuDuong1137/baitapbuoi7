//
//  ViewController.swift
//  bai5buoi6
//
//  Created by Dương chãng on 10/28/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monnyUillabel: UILabel!
    
    
    @IBOutlet weak var inputkm: UITextField!
    
    
    
    @IBOutlet weak var giatriUibutton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        inputkm.layer.cornerRadius = 20
        giatriUibutton.layer.cornerRadius = 16
        
        inputkm.keyboardType = .numberPad
    
    }

    @IBAction func onpress(_ sender: Any) {

        guard let t = Int(inputkm.text!)
            else{
                return
        }
    }
        var price = 5000
        if t <= 31
        {
            price += (t-1) * 4000
        }
        else
        {
            price += 30 * 4000 + (t-31) * 3000
        }
        monnyUillabel.text = "Price: \(price)"
    }


