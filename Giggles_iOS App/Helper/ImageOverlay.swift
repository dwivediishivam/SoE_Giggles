

import SwiftUI

struct ImageOverlay: View {
    var imageName: String
    var heading: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(imageName)
                .overlay(Color.black.opacity(0.5).cornerRadius(10))
                .cornerRadius(10)
            
            Text(heading)
                .bold()
                .foregroundColor(.white)
                .padding(5)
        }
    }
}

struct HomeCategory_Previews: PreviewProvider {
    static var previews: some View {
        ImageOverlay(imageName: "Lego-img", heading: "Legos")
    }
}
