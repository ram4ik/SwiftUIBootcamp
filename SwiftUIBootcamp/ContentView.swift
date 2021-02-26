//
//  ContentView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 25.02.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ToggleView().tabItem { Image(systemName: "togglepower") }.tag(0)
            TextEditorView().tabItem { Image(systemName: "doc.text.below.ecg") }.tag(1)
        }.accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
