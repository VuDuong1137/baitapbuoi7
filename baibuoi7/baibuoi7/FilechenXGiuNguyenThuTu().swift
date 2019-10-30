//
//  FilechenXGiuNguyenThuTu().swift
//  baibuoi7
//
//  Created by Dương chãng on 10/31/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import Foundation

func ChenXGiuNguyenThuTu(){
    print("nhập x: ")
    let x = Int(readLine()!)!
    var arrays:[Int] = [2, 43, 0, 3, 6, 18]
    print("mảng ban đầu: \(arrays)")
    arrays.sort()
    arrays.insert(x, at: 0)
    for i in 1..<arrays.count{
        if arrays[i] < arrays[i-1]{
            let temp: Int = arrays[i-1]
            arrays[i-1] = arrays[i]
            arrays[i] = temp
        }
    }
    print(arrays)
}
