

import SwiftUI

struct Home: View {
    @State private var showProduct: Bool = false
    
    var body: some View {
        var imageName: String = "cycle"
        var price: Double = 1749
        var itemName: String = "Tricycle"
        
        VStack(alignment: .leading) {
            // Status bar
            StatusBar(showBtns: true)
            
            ScrollView {
                
                // Categories
                Headings(heading: "Categories")
                
                ScrollView(.horizontal) {
                    HStack{
                        ImageOverlay(imageName: "Lego-img", heading: "Legos")
                        ImageOverlay(imageName: "hotwheels-img", heading: "Hot\nWheels")
                        ImageOverlay(imageName: "stuffed-toys", heading: "Stuffed\nToys")
                    }
                }
                .padding([.leading, .trailing])
                
                // Banner
                Image("HomeDiscountBanner")
                    .resizable()
                    .frame(width: 400, height: 200, alignment: .center)
                    .padding()
                
                // Popular
                Headings(heading: "Popular")
                
                HStack {
                    HomePopular(itemName: "Tricycle", price: "1749", imageName: "cycle")
                        .onTapGesture {
                            //                            var imageName = "cycle"
                            //                            var price = 1749
                            //                            var itemName = "Tricycle"
                            showProduct = true
                        }
                        .padding([.leading, .bottom, .trailing])
                    HomePopular(itemName: "Nerf gun", price: "699", imageName: "nerf")
                        .onTapGesture {
                            imageName = "nerf"
                            price = 699
                            itemName = "Nerf gun"
                            showProduct = true
                        }
                        .padding([.leading, .bottom, .trailing])
                }
                
                HStack {
                    HomePopular(itemName: "Captain America", price: "399", imageName: "captainAmerica")
                        .onTapGesture {
                            imageName = "captainAmerica"
                            price = 399
                            itemName = "Captain America"
                            showProduct = true
                        }
                        .padding()
                    HomePopular(itemName: "penguine", price: "299", imageName: "penguine")
                        .onTapGesture {
                            imageName = "penguine"
                            price = 299
                            itemName = "penguine"
                            showProduct = true
                        }
                        .padding()
                }
                
                // Age Group
                Headings(heading: "Age Group")
                
                ScrollView(.horizontal) {
                    HStack {
                        ImageOverlay(imageName: "infant-img", heading: "Infant")
                        ImageOverlay(imageName: "under-7", heading: "Under 7")
                        ImageOverlay(imageName: "above-7", heading: "Above 7")
                    }
                }
                .padding([.leading, .trailing])
                
            }
        }
        .fullScreenCover(isPresented: $showProduct) {
            ProductPage(imageName: imageName, productName: itemName, price: price)
                .preferredColorScheme(.light)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .preferredColorScheme(.light)
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}
