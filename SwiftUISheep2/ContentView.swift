import SwiftUI

struct ContentView : View {
    var body: some View {
        
        NavigationView {
            List(dataSheep) {
            sheep in
                
                NavigationLink(destination: SheepViewRow(animal: sheep)) {
                    
                    SheepViewRow(animal: sheep)
                }
            }.navigationBarTitle("Sheep")
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
