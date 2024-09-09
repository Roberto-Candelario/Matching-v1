//
//  ContentView.swift
//  Matching v1
//
//  Created by Roberto Candelario on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["💀", "☠️", "😸", "😾", "🤡", "🎲", "🍎", "🦄", "🐱", "📚", "🦄", "🍔", "🌟", "🤖", "🦋", "🎲", "🌍", "🦋", "🎉", "🚀", "🌍", "🍎", "🌈", "💩"]
    @State var cardCount = 4
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                ForEach(0..<cardCount, id: \.self) { index in
                    CardView(emoji: emojis[index])
                        .aspectRatio(2/3, contentMode: .fit)
                }
                .padding()
            }
        }
        .foregroundColor(.red)
    
        Spacer()
        
        HStack {
            Button(action: {
                if cardCount > 1 {
                    self.cardCount -= 1
                }
            }, label: {
                Image(systemName: "rectangle.stack.badge.minus.fill")
            })
            
            Spacer()
            
            Button(action: {
                if cardCount < emojis.count {
                    self.cardCount += 1
                }
            }, label: {
                Image(systemName: "rectangle.stack.badge.plus.fill")
            })
            
        }
        .imageScale(.large)
        .font(.title)
        
    }
}



#Preview {
    ContentView()
}

