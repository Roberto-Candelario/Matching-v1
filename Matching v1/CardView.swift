//
//  CardView.swift
//  Matching v1
//
//  Created by Roberto Candelario on 9/9/24.
//

import SwiftUI

struct CardView: View {
    
    var emoji: String
    @State private var isFaceup = false
    
    
    var body: some View {
        
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(emoji).font(.largeTitle)
            }
            .opacity(isFaceup ? 1: 0)
            base.fill().opacity(isFaceup ? 0 : 1)
            
        }
        .foregroundColor(.red)
        .onTapGesture {
            isFaceup.toggle()
        }
    }
}

#Preview {
    CardView(emoji: "💀")
}
