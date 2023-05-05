
import SwiftUI

struct HomePopular: View {
    var itemName: String
    var price: String
    var imageName: String
    
    var body: some View {
        ZStack {
            // Background
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(uiColor: UIColor.systemBackground))
                .frame(width: 180, height: 230, alignment: .center)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 10, y: 5)
            
            // Content
            VStack(alignment: .leading) {
                Image(imageName)
                    .resizable()
                    .frame(width: 145, height: 145, alignment: .center)
                    .cornerRadius(10)
                
                Text(itemName)
                    .foregroundColor(.secondary)
                
                Text("Rs. \(price)")
                
            }
        }
    }
}

struct HomePopular_Previews: PreviewProvider {
    static var previews: some View {
        HomePopular(itemName: "tricycle", price: "1749", imageName: "cycle")
    }
}
