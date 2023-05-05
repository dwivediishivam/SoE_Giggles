

import SwiftUI

struct Cart: View {
    @State private var couponCode: String = ""
    @State private var couponApplied: Bool = false
    @State private var amount: Int = 1647
    
    @State private var showProduct: Bool = false
    
    var body: some View {
        var imageNameProd: String = "cycle"
        var priceProd: Double = 1749
        var itemName: String = "Tricycle"
        VStack(alignment: .leading) {
            StatusBar(showBtns: false)
            
            HStack {
                Text("Shopping Bag")
                    .font(.title2)
                    .foregroundColor(.black.opacity(0.75))
                Spacer()
                Image(systemName: "heart")
            }
            .padding([.leading, .trailing, .top], 20)
            
            List {
                CartRow(imageName: "transformer-toy", itemName: "Blue-Red Transformer", price: 599)
                CartRow(imageName: "car", itemName: "Pink kids car", price: 449)
                CartRow(imageName: "helicopter", itemName: "Wireless Remote Control Helicopter", price: 599)
                
                VStack(alignment:.leading) {
                    // Start - Similar Products
                    Text("Similar Products")
                        .font(.title2)
                        .foregroundColor(.black.opacity(0.75))
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HomePopular(itemName: "penguine", price: "299", imageName: "penguine")
                                .onTapGesture {
                                    itemName = "penguine"
                                    priceProd = 299
                                    imageNameProd = "penguine"
                                    showProduct = true
                                }
                                .padding()
                            HomePopular(itemName: "Nerf gun", price: "699", imageName: "nerf")
                                .onTapGesture {
                                    itemName = "Nerf Gun"
                                    priceProd = 699
                                    imageNameProd = "nerf"
                                    showProduct = true
                                }
                                .padding()
                            HomePopular(itemName: "Tricycle", price: "1749", imageName: "cycle")
                                .onTapGesture {
                                    itemName = "Tricycle"
                                    priceProd = 1749
                                    imageNameProd = "cycle"
                                    showProduct = true
                                }
                                .padding()
                        }
                    }
                    
                    // End - Similar Products
                }
                // Coupon
                HStack {
                    TextField("Enter Coupon Code", text: $couponCode)
                    
                    if (couponApplied) {
                        Image(systemName: "checkmark")
                            .foregroundColor(.green)
                    }
                    
                    // Apply coupon code
                    Button {
                        // Coupon code is Arorashivoy
                        if (couponCode == "Arorashivoy") {
                            couponApplied = true
                        }
                    }label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 80, height: 50, alignment: .center)
                                .foregroundColor(.primary)
                            Text("Apply")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                .padding([.leading, .trailing])
                
                
                HStack {
                    Text("Total Amount")
                    Spacer()
                    Text("\(amount)")
                }
                .padding()
                
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 50, alignment: .center)
                            .foregroundColor(.primary)
                        Text("Proceed to checkout")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $showProduct) {
            ProductPage(imageName: imageNameProd, productName: itemName, price: priceProd)
                .preferredColorScheme(.light)
        }
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
            .preferredColorScheme(.light)
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}
