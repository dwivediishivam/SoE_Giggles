

import SwiftUI

struct SimilarProducts: View {
    @Binding var showProduct: Bool
    @Binding var itemName: String?
    @Binding var price: Double?
    @Binding var imageName: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Similar Products")
                .font(.title2)
                .foregroundColor(.black.opacity(0.75))
                .padding()
            
            ScrollView(.horizontal) {
                HStack {
                    HomePopular(itemName: "penguine", price: "299", imageName: "penguine")
                        .onTapGesture {
                            itemName = "penguine"
                            price = 299
                            imageName = "penguine"
                            if (itemName != nil && price != nil && imageName != nil) {
                                showProduct = true
                            }
                        }
                        .padding()
                    HomePopular(itemName: "Nerf gun", price: "699", imageName: "nerf")
                        .onTapGesture {
                            itemName = "Nerf Gun"
                            price = 699
                            imageName = "nerf"
                            if (itemName != nil && price != nil && imageName != nil) {
                                showProduct = true
                            }
                        }
                        .padding()
                    HomePopular(itemName: "Tricycle", price: "1749", imageName: "cycle")
                        .onTapGesture {
                            itemName = "Tricycle"
                            price = 1749
                            imageName = "cycle"
                            if (itemName != nil && price != nil && imageName != nil) {
                                showProduct = true
                            }
                        }
                        .padding()
                }
            }
        }
    }
}

struct SimilarProducts_Previews: PreviewProvider {
    static var previews: some View {
        SimilarProducts(showProduct: .constant(false), itemName: .constant(nil), price: .constant(nil), imageName: .constant(nil))
    }
}
