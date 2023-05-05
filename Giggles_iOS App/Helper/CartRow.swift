
import SwiftUI

struct CartRow: View {
    var imageName: String
    var itemName: String
    var price: Int
    
    var body: some View {
        HStack(alignment: .top){
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            
            
            Text(itemName)
                .padding([.leading])
                .padding(.top, 5)
            
            Spacer()
            
            VStack(alignment: .trailing){
                Image(systemName: "x.circle")
                    .foregroundColor(.orange)
                    .padding([.leading, .trailing, .bottom])
                    .padding(.bottom, 5)
                
                
                Text("Rs. \(price)")
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.top, 5)
            }
        }
    }
}

struct CartRow_Previews: PreviewProvider {
    static var previews: some View {
        CartRow(imageName: "transformer-toy", itemName: "Blue-Red transformer", price: 599)
    }
}
