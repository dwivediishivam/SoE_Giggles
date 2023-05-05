

import SwiftUI

struct SellerTitleTxt: View {
    @Binding var title: String
    var body: some View {
        Text("Title")
            .padding(.leading)
            .foregroundColor(.secondary)
            .padding(.bottom, -5)
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 15)
                .stroke()
                .frame(width: 400, height: 50, alignment: .center)
            
            TextField("Title", text: $title)
                .padding()
        }
        .padding([.leading, .trailing])
    }
}

struct SellerTitleTxt_Previews: PreviewProvider {
    static var previews: some View {
        SellerTitleTxt(title: .constant(""))
    }
}
