//
//  Fileday,morth.year,cach2.swift
//  baibuoi7
//
//  Created by Dương chãng on 10/31/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import Foundation
func ngayThang(){
    print("Nhập vào năm: ")
    let year = Int(readLine()!)!
    for i in 1...12{
        if i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12{
            print("Tháng \(i) có 31 ngày")
        }else  if i == 4 || i == 6 || i == 9 || i == 11 {
            print("Tháng \(i) có 30 ngày")
        }else{
            if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
                print("Tháng \(i) có 29 ngày")
            }else{
                print("Tháng \(i) có 28 ngày")
            }
        }
    }
}
