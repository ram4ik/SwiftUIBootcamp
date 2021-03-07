//
//  OnAppearView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 07.03.2021.
//

import SwiftUI

struct OnAppearView: View {
    @State private var myText: String = "Start text."
    @State private var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear() {
                                count += 1
                            }
                    }
                }
            }.onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    myText = "This is the new text!"
                }
            }.onDisappear() {
                myText = "Ending text."
            }.navigationTitle("OnAppear: \(count) times")
        }
    }
}

struct OnAppearView_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearView()
    }
}
