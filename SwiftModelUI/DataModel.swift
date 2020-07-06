//
//  DataModel.swift
//  SwiftModelUI
//
//  Created by Ipung Dev Center on 04/07/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import Foundation
import Combine


struct DataModel : Identifiable {
    let id: Int
    let namaProduk: String
    let fotoProduk: String
    let hargaProduk: Int
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(id:Int, namaProduk: String, fotoProduk: String, hargaProduk: Int, lokasi:String, ratingCount: Int, jumlahRating: Int) {
        self.id = id
        self.namaProduk = namaProduk
        self.fotoProduk = fotoProduk
        self.hargaProduk = hargaProduk
        self.lokasi  = lokasi
        self.ratingCount = ratingCount
        self.jumlahRating = jumlahRating
    }
    
}



