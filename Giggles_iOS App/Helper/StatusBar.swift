
import SwiftUI

struct StatusBar: View {
    var showBtns: Bool
    @State private var showSeller: Bool = false
    
    var body: some View {
        HStack{
            Image("giggles-logo")
                .resizable()
                .frame(width: 170, height: 45, alignment: .leading)
                .padding(.leading, -22)
            Spacer()
            
            if (showBtns) {
                // Post an add
                Button {
                    showSeller = true
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.black.opacity(0.75))
                }
                
                // Notifications
                Button {
                    
                } label: {
                    Image(systemName: "bell.circle.fill")
                        .foregroundColor(.black.opacity(0.75))
                }
            }
        }
        .font(.title)
        .foregroundColor(.primary)
        .padding([.leading, .trailing])
        .fullScreenCover(isPresented: $showSeller) {
            Sell()
                .preferredColorScheme(.light)
        }
    }
}

struct StatusBar_Previews: PreviewProvider {
    static var previews: some View {
        StatusBar(showBtns: true)
    }
}
