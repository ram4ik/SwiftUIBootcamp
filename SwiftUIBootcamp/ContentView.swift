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
            Group {
                ToggleView().tabItem { Image(systemName: "togglepower") }.tag(0)
                TextEditorView().tabItem { Image(systemName: "doc.text.below.ecg") }.tag(1)
                TextFieldView().tabItem { Image(systemName: "textformat.abc.dottedunderline") }.tag(2)
                ContextMenuView().tabItem { Image(systemName: "contextualmenu.and.cursorarrow")}.tag(3)
                ActionsSheetView().tabItem { Image(systemName: "text.redaction") }.tag(4)
            }
        }.accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
