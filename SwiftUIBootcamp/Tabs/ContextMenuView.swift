//
//  ContextMenuView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 26.02.2021.
//

import SwiftUI

struct ContextMenuView: View {
    
    @State private var backgroundColor: Color = Color(.gray)
    @State private var foreground: Color = Color.white
    @State private var icon = "house.fill"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(systemName: icon)
                .font(.title)
            Text("SwiftUI")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .padding(30)
        .foregroundColor(foreground)
        .background(backgroundColor)
        .shadow(radius: 2)
        .contextMenu {
            Button {
                backgroundColor = Color.orange
            } label: {
                Label {
                    Text("Change background")
                } icon: {
                    Image(systemName: "flame.fill")
                }
            }
            Button {
                foreground = Color.primary
            } label: {
                Label {
                    Text("Change foreground")
                } icon: {
                    Image(systemName: "flame.fill")
                }
            }
            Button {
                icon = "heart"
            } label: {
                Label {
                    Text("Like Post")
                } icon: {
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
