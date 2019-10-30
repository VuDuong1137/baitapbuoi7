//
//  ViewController.swift
//  tinhtiendien
//
//  Created by Dương chãng on 10/28/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tiendienlbl: UILabel!
    
    @IBOutlet weak var inputtf: UITextField!
    
    
    @IBOutlet weak var thanhtoanbt: UIButton!
    var n:Int = 0
    var sodien = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thanhtoanbt.backgroundColor = UIColor.red
        tiendienlbl.backgroundColor = UIColor.green
        inputtf.backgroundColor = UIColor.brown
        thanhtoanbt.layer.cornerRadius = 15
        
    }

    @IBAction func thanhtoantiendien(_ sender: Any) {
        let thanhtoan = thanhtoantiendien()
        tiendienlbl.text = "\(thanhtoan)"
    }
    
    func thanhtoantiendien() -> Float {
        let sodien = Float(readLine()!)!
        if sodien < 0 {
            return (thanhtoantiendien()) // return (tên)
        }else{
            if sodien <= 50 {
            return Float(sodien * 1678)
            }else if sodien <= 100{
                print(Float(50 * 1678) + (sodien - 50) * 1734)
            }else if sodien <= 201 {
                print(Float(50 * 1678) + (100 * 1734) + (sodien - 100) * 2014)
            }else if sodien <= 300{
                print(Float(50 * 1678) + (100 * 1734) + (100 * 2014) + (sodien - 100) *  2536)
            } else if sodien <= 400{
                print(Float(50 * 1678) + (100 * 1734) + (100 * 2014) + (100 * 2536) + (sodien - 100) * 2834)
            }else if sodien <= 401 {
                print(Float(50 * 1678) + (100 * 1734) + (100 * 2014) + (100 * 2536) + (100 * 2834) + (sodien - 100) * 2927)
            }
            return (thanhtoantiendien())
        }
    }
}

