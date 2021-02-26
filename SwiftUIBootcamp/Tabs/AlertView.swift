//
//  AlertView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 26.02.2021.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert: Bool = false
    
    var body: some View {
        Button {
            showAlert.toggle()
        } label: {
            Text("Click here")
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("There was an error!"))
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
