//
//  PickerView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 26.02.2021.
//

import SwiftUI

struct PickerView: View {
    @State private var segment: Int = 3
    @State private var selection: String = "42"
    @State private var picked: Int = 2
    
    @State private var most: String = "Most Popular"
    let filterOptions = ["Most Recent", "Most Popular", "Most Liked"]
    
    var body: some View {
        VStack {
            VStack {
                Picker(
                    selection: $segment,
                    label: Text("Picker").foregroundColor(.blue),
                    content: {
                        Text("One").tag(1)
                        Text("Two").tag(2)
                        Text("Three").tag(3)
                        Text("Four").tag(4)
                    })
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal)
            }
            
            VStack {
                HStack {
                    Text("Age:")
                    Text(selection)
                }
                Picker(
                    selection: $selection,
                    label: Text("Picker"),
                    content: {
                        ForEach(18..<100) { number in
                            Text("\(number)")
                                .font(.title)
                                .foregroundColor(.primary)
                                .tag("\(number)")
                        }
                    })
                //.background(Color.gray.opacity(0.2))
                //.pickerStyle(WheelPickerStyle())
            }
            VStack {
                HStack {
                    Text("Picked:")
                    Text("\(picked)")
                }
                Picker(
                    selection: $picked,
                    label: Text("Picker").foregroundColor(.blue),
                    content: {
                        Text("One").tag(1)
                        Text("Two").tag(2)
                        Text("Three").tag(3)
                        Text("Four").tag(4)
                    }).pickerStyle(MenuPickerStyle())
            }
            
            VStack {
                Picker(
                    selection: $most,
                    label:
                        HStack {
                            Text("Filter:")
                            Text(most)
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                        .shadow(radius: 6)
                    ,
                    content: {
                        ForEach(filterOptions, id: \.self) { option in
                            Text(option)
                                .tag(option)
                        }
                }).pickerStyle(MenuPickerStyle())
            }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
