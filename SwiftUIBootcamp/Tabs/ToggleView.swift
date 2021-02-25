//
//  Toggle.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 25.02.2021.
//

import SwiftUI

struct ToggleView: View {
    @State private var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change status")
                })
                .toggleStyle(SwitchToggleStyle(tint: .orange))
            Spacer()
        }.padding(.horizontal, 40)
    }
}

struct Toggle_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
