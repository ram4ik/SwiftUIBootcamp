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
                ToggleView().tabItem {
                    Image(systemName: "togglepower")
                    Text("Toggle")
                }.tag(0)
                TextEditorView().tabItem {
                    Image(systemName: "doc.text.below.ecg")
                    Text("Editor")
                }.tag(1)
                TextFieldView().tabItem {
                    Image(systemName: "textformat.abc.dottedunderline")
                    Text("TextField")
                }.tag(2)
                ContextMenuView().tabItem {
                    Image(systemName: "contextualmenu.and.cursorarrow")
                    Text("ContextMenu")
                }.tag(3)
                ActionsSheetView().tabItem {
                    Image(systemName: "text.redaction")
                    Text("ActionSheet")
                }.tag(4)
                AlertView().tabItem {
                    Image(systemName: "scalemass")
                    Text("Alert")
                }.tag(5)
                PickerView().tabItem {
                    Image(systemName: "eyedropper")
                    Text("Picker")
                }.tag(6)
                ColorPickerView().tabItem {
                    Image(systemName: "drop.triangle")
                    Text("ColorPicker")
                }.tag(7)
                DatePickerView().tabItem {
                    Image(systemName: "calendar.badge.clock")
                    Text("DatePicker")
                }.tag(8)
            }
        }.accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
