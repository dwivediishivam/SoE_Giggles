
import SwiftUI

struct Sell: View {
    @Environment(\.presentationMode) var presentationMode
    
    var categories = ["All", "Baby Gear", "Toys", "Legos", "Hot Wheels", "Stuffed Toys"]
    var brands = ["None", "Hot wheels", "Lego", "Barbies", "Others"]
    @State private var category: String = "All"
    @State private var brand: String = "None"
    @State private var title: String = ""
    @State private var fileImporter: Bool = false
    @State private var expectedValue: Double = 199
    
    var body: some View {
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
            
            Text("Sell an item")
                .font(.title)
                .foregroundColor(.black.opacity(0.75))
                .bold()
                .padding()
            
            // Category picker
            SellPickers(name: "Category", categories: categories, category: $category)
            
            // Brand picker
            SellPickers(name: "Brand", categories: brands, category: $brand)
            
            // Title
            SellerTitleTxt(title: $title)
            
            // File import
            Button {
                
            }label: {
                HStack{
                    Text("Photo Upload")
                        .font(.title2)
                        .foregroundColor(.black.opacity(0.75))
                    
                    Spacer()
                    
                    Image(systemName: "photo")
                        .font(.title2)
                        .foregroundColor(.black.opacity(0.75))
                }
            }
            .padding()
            
            Divider()
            
            // Expected price
            SellerExpVal(expectedValue: $expectedValue)
            
            Spacer()
            
            Button {
                
            }label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.primary)
                        .frame(width: 400, height: 70, alignment: .center)
                        .padding()
                    
                    Text("Place a request")
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()
                }
            }
        }
    }
}

struct Sell_Previews: PreviewProvider {
    static var previews: some View {
        Sell()
            .preferredColorScheme(.light)
    }
}
