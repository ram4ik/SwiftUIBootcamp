//
//  StepperView.swift
//  SwiftUIBootcamp
//
//  Created by Ramill Ibragimov on 01.03.2021.
//

import SwiftUI

struct StepperView: View {
    @State private var stepperValue: Int = 10
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Stepper("Stepper by 5: \(stepperValue)") {
                stepperValue += 5
            } onDecrement: {
                stepperValue -= 5
            }.padding()
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
