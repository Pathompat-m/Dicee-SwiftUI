//
// ContentView.swift
// Dicee-SwiftUI
//
// Created by Pathompat Mekbenchapivat on 2/4/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    // MARK: - Body
    
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
                   DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }, label: {
                    Text("Roll")
                        .font(.system(size: 35))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .frame(width: 200)
                })
                .background(Color.black)
                .cornerRadius(10.0)
            }
        }
    }
}

struct DiceView: View {
    
    // MARK: - Properties
    
    let n: Int
    
    // MARK: - Body
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
