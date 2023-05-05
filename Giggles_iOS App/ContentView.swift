

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .preferredColorScheme(.light)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Explore")
                .tabItem {
//                    Label("Community", systemImage: "arkit")
                    Label("Community", systemImage: "gyroscope")
                }
            
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
            Cart()
                .preferredColorScheme(.light)
                .tabItem {
                    Label("Bag", systemImage: "bag.fill")
                }
            
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}
