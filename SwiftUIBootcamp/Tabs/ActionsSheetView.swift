//
//  ActionsSheetView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 26.02.2021.
//

import SwiftUI

struct ActionsSheetView: View {
    @State private var showActionSheet: Bool = false
    @State private var showActionSheetTwo: Bool = false
    
    @State private var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Circle()
                    .frame(width: 30, height: 30, alignment: .center)
                Text("@UserName")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheetTwo.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .actionSheet(isPresented: $showActionSheetTwo) {
                    getActionSheet()
                }
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
            Spacer()
            
            Button {
                showActionSheet.toggle()
            } label: {
                Text("Click me!")
            }.actionSheet(isPresented: $showActionSheet) {
                getActionSheet()
            }
            
            Spacer()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        // return ActionSheet(title: Text("This is a title!"))
        
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
        let button3: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("This is a title!"),
            message: Text("This is a message!"),
            buttons: [button1, button1, button1, button1, button2, button3]
        )
    }
}

struct ActionsSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionsSheetView()
    }
}
