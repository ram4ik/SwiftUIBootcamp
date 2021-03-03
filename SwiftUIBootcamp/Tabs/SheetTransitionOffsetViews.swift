//
//  SheetTransitionOffsetViews.swift
//  SwiftUIBootcamp
//
//  Created by Ramill Ibragimov on 03.03.2021.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State private var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: {
                    showNewScreen.toggle()
                }, label: {
                    Text("Button")
                        .font(.largeTitle)
                        .padding()
                })
                Spacer()
            }
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen(showNewScreen: $showNewScreen)
//            })
            
            
//            if showNewScreen {
//                NewScreen()
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring())
//            }
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}


struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.edgesIgnoringSafeArea(.all)
            Button {
                showNewScreen = false
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct SheetTransitionOffsetViews: View {
    var body: some View {
        PopoverBootcamp()
    }
}

struct SheetTransitionOffsetViews_Previews: PreviewProvider {
    static var previews: some View {
        SheetTransitionOffsetViews()
    }
}
