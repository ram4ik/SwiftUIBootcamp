//
//  HapticsAndVibrationsView.swift
//  SwiftUIBootcamp
//
//  Created by Ramill Ibragimov on 08.04.2021.
//

import SwiftUI

class HapticManage {
    static let instance = HapticManage()
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator =  UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

struct HapticsAndVibrationsView: View {
    var body: some View {
        VStack {
            Button("success") {
                HapticManage.instance.notification(type: .success)
            }
            Button("warning") {
                HapticManage.instance.notification(type: .warning)
            }
            Button("error") {
                HapticManage.instance.notification(type: .error)
            }
            Button("heavy") {
                HapticManage.instance.impact(style: .heavy)
            }
            Button("light") {
                HapticManage.instance.impact(style: .light)
            }
            Button("medium") {
                HapticManage.instance.impact(style: .medium)
            }
            Button("rigid") {
                HapticManage.instance.impact(style: .rigid)
            }
            Button("soft") {
                HapticManage.instance.impact(style: .soft)
            }
        }
    }
}

struct HapticsAndVibrationsView_Previews: PreviewProvider {
    static var previews: some View {
        HapticsAndVibrationsView()
    }
}
