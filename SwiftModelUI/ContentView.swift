//
//  ContentView.swift
//  SwiftModelUI
//
//  Created by Ipung Dev Center on 22/06/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import SwiftUI

//Model Data
struct ProductModel : Identifiable {
    let id: Int
    let namaProduk: String
    let fotoProduk: String
    let hargaProduk: Int
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(id:Int, namaProduk:String, fotoProduk: String, hargaProduk:Int,lokasi: String, ratingCount: Int, jumlahRating: Int) {
        self.id = id
        self.namaProduk = namaProduk
        self.fotoProduk = fotoProduk
        self.hargaProduk = hargaProduk
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.jumlahRating = jumlahRating
    }
}


struct ContentView: View {
    let data : [ProductModel] = [
        ProductModel(id: 1, namaProduk: "Polygon Monarch 3.0", fotoProduk: "foto1", hargaProduk: 2000000,lokasi: "Kab. Bogor", ratingCount: 4, jumlahRating: 33),
        ProductModel(id: 2, namaProduk: "Polygon Monarch 4.0", fotoProduk: "foto2", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 2, jumlahRating: 33),
        ProductModel(id: 3, namaProduk: "Polygon Monarch 5.0", fotoProduk: "foto3", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 4, jumlahRating: 33),
        ProductModel(id: 4, namaProduk: "United Detroit 2.0", fotoProduk: "foto4", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 2, jumlahRating: 33),
        ProductModel(id: 5, namaProduk: "United Detroit 3.0", fotoProduk: "foto5", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 4, jumlahRating: 33),
        ProductModel(id: 6, namaProduk: "United Detroit 4.0", fotoProduk: "foto6", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 5, jumlahRating: 33),
        ProductModel(id: 7, namaProduk: "Pacific Invert", fotoProduk: "foto7", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 4, jumlahRating: 33),
        ProductModel(id: 8, namaProduk: "United Genio", fotoProduk: "foto8", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 5, jumlahRating: 33),
        ProductModel(id: 9, namaProduk: "Exotic 3.0", fotoProduk: "foto9", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 2, jumlahRating: 33),
        ProductModel(id: 10, namaProduk: "Polygon heist 3.0", fotoProduk: "foto10", hargaProduk: 2000000, lokasi: "Kab. Bogor",ratingCount: 4, jumlahRating: 33)
    ]
    
    
    var body: some View {

            NavigationView{
                ScrollView{
                    ForEach(data) { row in // create number of rows
                        VStack(spacing:10){
                            Product(data: row)
                        }
                        .padding()
                    }
                }
                
                .navigationBarTitle("Sepeda MTB")
                .navigationBarItems(
                    trailing:
                    HStack(spacing:20){
                        Button(action:{print("Ok")}){
                            Image(systemName: "person.fill")
                        }
                        
                        Button(action:{print("Ok")}){
                            Image(systemName: "cart.fill")
                        }
                    }
                )
            }
            .accentColor(Color.secondary)
            .navigationViewStyle(StackNavigationViewStyle())
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Product : View {
    let data: ProductModel
    
    var body: some View {
        
        VStack(alignment:.leading){
            ZStack(alignment:.topTrailing){
                
                
                Image(self.data.fotoProduk)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
                
                Button(action: {print("heart clicked")}){
                    Image(systemName: "heart")
                    .padding()
                    .foregroundColor(Color.red)
                }
            }
              
            Text(self.data.namaProduk)
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp. \(self.data.hargaProduk)")
                .font(.title)
                .foregroundColor(.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text(self.data.lokasi)
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack {
                HStack{
                    ForEach(0..<self.data.ratingCount){
                        items in
                        Image(systemName: "star.fill")
                    }
                    
                    
                }.foregroundColor(.yellow)
                Text("\(self.data.jumlahRating)")
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            Button(action:{print("Tambah ke Keranjang")} ){
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "cart")
                        Text("Tambah ke Keranjang")
                            .font(.callout)
                            .padding()
                    }
                    Spacer()
                }
            }
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding()
            
        }
        .background(Color("warna"))
        .cornerRadius(15)
    }
}
