//
//  SheepViewRow.swift
//  SwiftUISheep2
//
//  Created by Артем on 7/18/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import SwiftUI


struct SheepViewRow : View {
    var animal: Sheep
    var body: some View {
        
        HStack () {
            Image(animal.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red, lineWidth: 4))
            .shadow(radius: 5)
            
            VStack(alignment: .leading) {
                Text(animal.name)
                .bold()
                .font(.headline)
                Text(animal.description)
                .font(.footnote)
            }
        }
    }
}

#if DEBUG
struct SheepViewRow_Previews : PreviewProvider {
    static var previews: some View {
        SheepViewRow(animal: dataSheep[0])}
}
#endif
