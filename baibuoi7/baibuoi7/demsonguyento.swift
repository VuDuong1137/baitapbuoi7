//
//  demsonguyento.swift
//  baibuoi7
//
//  Created by Dương chãng on 10/31/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import Foundation
func demsonguyento(){
    print("nhập vào hai số tự nhiên m , n (m<n)")
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    if m>=n || m<0 || n<0{
        demsonguyento()
        return
    }
    if n<=1{
        print("không tìm thấy số nguyên trong khoảng [\(m),\(n)]")
    }else if m >= 2 {
        for i in m...n{
            if isSoNguyenTo(n: i){
                print("số nguyên tố trong khoảng [\(m),\(n)] là \(i)")
            }
        }
    }
}
func isSoNguyenTo(n: Int) -> Bool{
    var dem = 0
    for i in 2..<n{
        if  n%i == 0{
            dem += 1
            break
        }
    }
    if dem == 0{
        return true
    }else {
        return true
}
}
