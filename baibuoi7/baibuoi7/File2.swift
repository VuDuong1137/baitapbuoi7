//
//  File2.swift
//  baibuoi7
//
//  Created by Dương chãng on 10/28/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import Foundation

//Hiển thị số ngày của tháng. Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận.
func bai2()
{
    print("Nhập năm: ")
    let nam = Int(readLine()!)!
    print("Nhập tháng: ")
    var thang = Int(readLine()!)!
    
    switch thang {
    case 1, 3, 5, 7, 8, 10, 12:
        print("Tháng \(thang) có 31 ngày")
    case 4, 6, 9, 11:
        print("tháng \(thang) có 30 ngày")
    case 2:
        if nam % 400 == 0 || (nam % 4 == 0 && nam % 100 != 0)
        {
            print("Tháng 2 có 29 ngày")
        }
        else{
            print("Tháng 2 có 28 ngày")
        }
    default:
        print()
    }
}
