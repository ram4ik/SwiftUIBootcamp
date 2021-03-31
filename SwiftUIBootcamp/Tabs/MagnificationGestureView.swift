//
//  MagnificationGestureView.swift
//  SwiftUIBootcamp
//
//  Created by Ramill Ibragimov on 31.03.2021.
//

import SwiftUI

struct MagnificationGestureView: View {
    
    @State private var currentAmount: CGFloat = 0
    @State private var lastAmount: CGFloat = 0
    
    var body: some View {
        Text("Hello, World!")
            .font(.title)
            .padding(40)
            .foregroundColor(.white)
            .background(Color.orange.cornerRadius(10))
            .scaleEffect(1 + currentAmount + lastAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value  in
                        currentAmount = value - 1
                    }
                    .onEnded { value in
                        lastAmount += currentAmount
                        currentAmount = 0
                    }
            )
    }
}

struct MagnificationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureView()
    }
}
