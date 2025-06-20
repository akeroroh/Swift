//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by 진아현 on 5/14/25.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumger = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumger)
                }
                .padding(.horizontal)
                Spacer()
                
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumger = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

#Preview {
    ContentView()
}
