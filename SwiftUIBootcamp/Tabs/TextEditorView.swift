//
//  TextEditorView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 26.02.2021.
//

import SwiftUI

struct TextEditorView: View {
    @State var textEditorText: String = "Type text here..."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 200)
                    .cornerRadius(10)
                    .colorMultiply(.secondary)
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(10)
                })
                
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.gray.opacity(0.4))
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Text Editor")
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
