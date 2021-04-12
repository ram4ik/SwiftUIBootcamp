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
                StepperView().tabItem {
                    Image(systemName: "stethoscope")
                    Text("Stepper")
                }.tag(9)
            }
            Group {
                SliderView().tabItem {
                    Image(systemName: "slider.horizontal.below.rectangle")
                    Text("Slider")
                }.tag(10)
                SheetTransitionOffsetViews().tabItem {
                    Image(systemName: "signpost.right.fill")
                    Text("Popover")
                }.tag(11)
                OnAppearView().tabItem {
                    Image(systemName: "applescript")
                    Text("OnAppear")
                }.tag(12)
                EnvironmentObjectView().tabItem {
                    Image(systemName: "envelope.badge.shield.leadinghalf.fill")
                    Text("EnvironmentObject")
                }.tag(13)
                MagnificationGestureView().tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("MagnificationGesture")
                }.tag(14)
                RotationGestureView().tabItem {
                    Image(systemName: "crop.rotate")
                    Text("RotationGesture")
                }.tag(15)
                StartsWithMask().tabItem {
                    Image(systemName: "star")
                    Text("StartsWithMask")
                }.tag(15)
                SoundsView().tabItem {
                    Image(systemName: "hifispeaker")
                    Text("Sounds")
                }.tag(16)
                HapticsAndVibrationsView().tabItem {
                    Image(systemName: "location.viewfinder")
                    Text("Haptics")
                }.tag(17)
                GeometryReaderView().tabItem {
                    Image(systemName: "dot.arrowtriangles.up.right.down.left.circle")
                    Text("GeometryReader")
                }.tag(17)
            }
        }.accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
