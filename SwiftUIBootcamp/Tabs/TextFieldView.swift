//
//  TextFieldView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 26.02.2021.
//

import SwiftUI

struct TextFieldView: View {
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []
    
    var body: some View {
        VStack {
            TextField("Type something here...", text: $textFieldText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .background(Color.gray.opacity(0.2))
                .foregroundColor(.orange)
                .font(.headline)
                .padding()
            
            Button {
                if textIsValid() {
                    saveData()
                    textFieldText = ""
                }
            } label: {
                Text("Save".uppercased())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(textIsValid() ? Color.orange.cornerRadius(10) : Color.gray.cornerRadius(10) )
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding(.horizontal)
            .disabled(!textIsValid())
            
            ForEach(dataArray, id: \.self) { data in
                Text(data)
            }
            
            Spacer()
        }
    }
    
    private func saveData() {
        dataArray.append(textFieldText)
    }
    
    private func textIsValid() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
