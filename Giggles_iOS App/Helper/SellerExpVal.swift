
import SwiftUI

struct SellerExpVal: View {
    @Binding var expectedValue: Double
    var body: some View {
        Text("Expected Price")
            .font(.title2)
            .padding()
        
        Slider(value: $expectedValue, in: 199...10000)
            .padding([.leading, .trailing])
            .accentColor(.orange)
        
        Text("₹ \(String(format: "%.2f", expectedValue))")
            .font(.title2)
            .foregroundColor(.black.opacity(0.75))
            .padding()
    }
}

struct SellerExpVal_Previews: PreviewProvider {
    static var previews: some View {
        SellerExpVal(expectedValue: .constant(199))
    }
}
