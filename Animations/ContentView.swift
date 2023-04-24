//
//  ContentView.swift
//  Animations
//
//  Created by vefa kosova on 23.04.2023.
//

import SwiftUI

struct ContentView: View {
//1    @State private var animationAmount = 1.0
    
//2    @State private var animationAmount = 1.0
       
//3    @State private var animationAmount = 0.0
    
//4    @State private var enabled = false
    
//5    @State private var dragAmount = CGSize.zero
    
    let letters = Array("Hello, SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    
    var body: some View {
//1        Button("Tap Me") {
///            animationAmount += 1
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .overlay(
//            Circle()
//                .stroke(.red)
//                .scaleEffect(animationAmount)
//                .opacity(2 - animationAmount)
//                .animation(.easeInOut(duration: 1)
//                .repeatForever(autoreverses: false),
//                           value: animationAmount
//                )
///                .default, .easeOut
///                .interpolatingSpring(stiffness: 50, damping: 1)
///                .easeInOut(duration: 2).repeatCount(3, autoreverses: true)
//        )
//        .onAppear{
//            animationAmount = 2
//        }
///        .scaleEffect(animationAmount)
///        .blur(radius: (animationAmount - 1) * 3)
        
//2        print(animationAmount)
//
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//
//            Spacer()
//
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmount)
//        }
        
//3        Button("Tap Me") {
//            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(.blue)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        
//4        Button("Tap Me") {
//            enabled.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? .red : .blue)
//        .animation(nil, value: enabled)
//        .foregroundColor(.white)
//        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
//        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        
//5        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation }
//                    .onEnded { _ in
//                        withAnimation {
//                            dragAmount = .zero
//                        }
//                    }
///                    .animation(.spring(), value: dragAmount)
//            )

        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(
                        .default.delay(Double(num) / 20),
                        value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
