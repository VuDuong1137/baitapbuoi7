//
//  Filebay1buoi8.swift
//  baibuoi7
//
//  Created by Dương chãng on 10/31/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import Foundation
func bai1(){
    print("nhập chiều cao h:")
    let h = Int(readLine()!)!
    for i in 0..<h/2{
        for j in 0...i{
            print("*", terminator: "")
        }
        print()
    }
    for i in 0..<h/2{
        for j in 0..<h/2-i{
            print("*", terminator: "")
        }
        print()
    }
    
}
