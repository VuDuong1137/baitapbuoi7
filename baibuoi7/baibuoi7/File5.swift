//
//  File5.swift
//  baibuoi7
//
//  Created by Dương chãng on 10/28/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import Foundation
//Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.
func chenXSauPhanTuMax(){
    print("Nhập x: ")
    let x = Int(readLine()!)!
    var arrays: [Int] = [2, 43, 0, 3, 6, 18]
    print("Mảng ban đầu: \(arrays)")
    var indexMax = 0
    for (index, i) in arrays.enumerated() {
        if i > arrays[indexMax]{
            indexMax = index
        }
    }
    print(indexMax)
    arrays.insert(x, at: indexMax + 1)
    print("Mảng sau khi chèn x là: \(arrays)")
}

