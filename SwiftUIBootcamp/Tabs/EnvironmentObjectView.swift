//
//  EnvironmentObjectView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 12.03.2021.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append("iPhone")
        self.dataArray.append("iPad")
        self.dataArray.append(contentsOf: ["iMac", "AppleWatch", "AirPods"])
    }
}

struct EnvironmentObjectView: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }
            .navigationTitle("Apple devices")
            .navigationBarTitleDisplayMode(.inline)
            
        }.environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            NavigationLink(
                //destination: FinalView(viewModel: viewModel),
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                })
            
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.orange, Color.pink]), startPoint: .leading
                           , endPoint: .trailing).ignoresSafeArea()
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Divider().padding()
                ForEach(viewModel.dataArray, id: \.self) { item in
                    Text(item)
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}
