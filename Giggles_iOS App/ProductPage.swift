
import SwiftUI

struct ProductPage: View {
    @Environment(\.presentationMode) var presentationMode
    
    var imageName: String
    var productName: String
    var price: Double
    
    @State private var liked: Bool = false
    
    @State private var showProduct: Bool = false
    
    var body: some View {
        var imageNameProd: String = "cycle"
        var priceProd: Double = 1749
        var itemName: String = "Tricycle"
        
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .font(.title2)
                    .padding([.leading, .trailing])
                    .padding(.trailing, -30)
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                StatusBar(showBtns: false)
            }
            
            ScrollView {
                VStack(alignment: .leading) {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
//                        .ignoresSafeArea()
//                        .frame(height: 290, alignment: .center)
//                        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 2.5)
                    
                    Text(productName)
                        .font(.title)
                        .padding([.leading, .top])
                    
                    // Price
                    Text("₹ \(String(format: "%.2f", price))")
                        .font(.title2)
                        .foregroundColor(.orange)
                        .bold()
                        .padding([.leading])
                        .padding(.top, -5)
                        .padding(.bottom, -5)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 400, height: 70, alignment: .center)
                            .foregroundColor(.black.opacity(0.2))
                            .padding()
                        VStack(alignment: .leading) {
                            Text("Condition >")
                                .padding(.leading, 30)
                                .foregroundColor(.black.opacity(0.75))
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Image(systemName: "star")
                                
                                Text("\t4.0")
                                
                                Spacer()
                                
                                
                            }
                            .padding([.leading], 30)
                        }
                    }
                    
                    // Description
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.orange.opacity(0.3))
                            .frame(width: 100, height: 40, alignment: .leading)
                            .padding([.leading])
                        
                        Text("Description")
                            .foregroundColor(.orange)
                            .padding(.leading)
                    }
                    
                    Text("Excellent condition 6 month old")
                        .foregroundColor(.secondary)
                        .padding([.leading, .trailing])
                    
                    Divider()
                    
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
            }
            
            HStack {
                Button {
                    liked.toggle()
                }label: {
                    
                    if (liked) {
                        Image(systemName: "heart.fill")
                            .padding(.leading)
                            .foregroundColor(.red)
                    }else {
                        Image(systemName: "heart")
                            .padding(.leading)
                            .foregroundColor(.black)
                    }
                }
                
                // Add to bag
                Button {
                    
                }label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.black)
                            .frame(width: 320, height: 50, alignment: .center)
                            .padding([.leading, .trailing])
                        
                        Text("Add to bag")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding([.leading, .trailing])
            .padding([.top, .bottom], 5)
        }
        .fullScreenCover(isPresented: $showProduct) {
            ProductPage(imageName: imageNameProd, productName: itemName, price: priceProd)
                .preferredColorScheme(.light)
        }
    }
}

struct ProductPage_Previews: PreviewProvider {
    static var previews: some View {
        ProductPage(imageName: "helicopter", productName: "Helicopter", price: 1999)
    }
}
