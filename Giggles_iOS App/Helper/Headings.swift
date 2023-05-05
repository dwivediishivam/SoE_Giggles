

import SwiftUI

struct Headings: View {
    var heading: String
    
    var body: some View {
        HStack {
            Text(heading)
                .font(.title2)
                .bold()
                .foregroundColor(.black.opacity(0.8))
                .padding()
                .padding(.leading, 4)
        
            Spacer()
            
            // see all
            Button {
                
            }label: {
                Text("See all")
                Image(systemName: "arrow.right")
            }
            .foregroundColor(.orange)
            .padding()
        }
    }
}

struct Headings_Previews: PreviewProvider {
    static var previews: some View {
        Headings(heading: "Categories")
    }
}
