//
//  AnswearSheepView.swift
//  SwiftUISheep2
//
//  Created by Артем on 7/18/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import SwiftUI

struct AnswearSheepView : View {
    var anim: Sheep

    var body: some View {
        
        HStack () {
            Image(anim.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                .shadow(radius: 5)
            
            VStack(alignment: .leading) {
                Text(anim.name)
                    .bold()
                    .font(.headline)
                Text(anim.description)
                    .font(.footnote)
            }
        }
        
    }
}

#if DEBUG
struct AnswearSheepView_Previews : PreviewProvider {
    static var previews: some View {
        AnswearSheepView(anim: dataSheep[0])
    }
}
#endif
