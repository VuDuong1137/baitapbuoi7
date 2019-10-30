//
//  ViewController.swift
//  nstimer
//
//  Created by Dương chãng on 10/28/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    
    @IBOutlet weak var hienthisoLBL: UILabel!
    var thoigian:Timer! // NSTimer đổi tên thành timer
    var n = 0
    
    @IBOutlet weak var Start: UIButton!
    @IBOutlet weak var Pause: UIButton!
    @IBOutlet weak var ReStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hienthisoLBL.layer.cornerRadius = hienthisoLBL.bounds.width/3
        hienthisoLBL.backgroundColor = UIColor.black
        Start.backgroundColor = UIColor .red
        Pause.backgroundColor = UIColor .green
        ReStart.backgroundColor = UIColor . yellow
        Start.layer.cornerRadius = Start.bounds.width/3
        Pause.layer.cornerRadius = Pause.bounds.width/4
        ReStart.layer.cornerRadius = ReStart.bounds.width/5
        
        
        
    }

    @IBAction func Start(_ sender: Any) {
        // khich hoạt thời gian
        // khi bấm nut start một giây sau nó chạy hàm đếm và cứ mỗi một giấy sau nó chyaj đêm nữa và lựo đi lặp lại
        thoigian = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Dem), userInfo: nil, repeats: true)
    
    }
        @objc func Dem(){
            var n:Int = Int(hienthisoLBL.text!)!
           n += 1
            hienthisoLBL.text = String(n) // trả lợi giá trị chuỗi cho hienthisolbl.text
    }
    
    @IBAction func Pause(_ sender: Any) {
        thoigian.invalidate()
    }
    
    
    
    @IBAction func ReSrart(_ sender: Any) {
        hienthisoLBL.text = "0"
    }
    
    
    
    
}

