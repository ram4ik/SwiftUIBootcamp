//
//  ColorPickerView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 27.02.2021.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var backgroundColor: Color = .orange
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
                .padding()
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
