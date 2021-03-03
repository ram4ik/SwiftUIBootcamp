//
//  SliderView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 03.03.2021.
//

import SwiftUI

struct SliderView: View {
    @State private var sliderValue: Double = 10
    
    var body: some View {
        VStack {
            Text("Rating:")
            //Text("\(sliderValue)")
            Text(
                String(format: "%.0f", sliderValue)
            )
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 0...100)
            Slider(value: $sliderValue, in: 1...10, step: 1)
                .accentColor(.orange)
        }.padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
