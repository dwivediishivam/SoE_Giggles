
import SwiftUI

struct SellPickers: View {
    var name: String
    var categories: [String]
    @Binding var category: String
    
    var body: some View {
        Text(name)
            .padding(.leading)
            .foregroundColor(.secondary)
            .padding(.bottom, -5)
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 15)
                .stroke()
                .frame(width: 400, height: 50, alignment: .center)
            
            Picker(name, selection: $category) {
                ForEach(categories, id: \.self){name in
                    Text(name)
                }
            }
            .padding([.leading, .trailing])
            .accentColor(.black)
        }
        .padding([.leading, .trailing])
    }
}

struct SellPickers_Previews: PreviewProvider {
    static var previews: some View {
        SellPickers(name: "Category", categories: ["All", "Baby Gear", "Toys", "Legos", "Hot Wheels", "Stuffed Toys"], category: .constant("All"))
    }
}
