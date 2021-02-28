//
//  DatePickerView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 28.02.2021.
//

import SwiftUI

struct DatePickerView: View {
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        DatePicker("Select a Date", selection: $selectedDate)
            .padding()
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
