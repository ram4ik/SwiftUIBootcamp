//
//  DownloadJSONDataView.swift
//  SwiftUIBootcamp
//
//  Created by ramil on 22.04.2021.
//

import SwiftUI

struct PostModel: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

class Download: ObservableObject {
    
    @Published var posts: [PostModel] = []
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        downloadData(fromUrl: url) { (returnedData) in
            if let data = returnedData {
                guard let newPosts = try? JSONDecoder().decode([PostModel].self, from: data) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.posts = newPosts
                }
            } else {
                print("No data returned!")
            }
        }
    }
    
    func downloadData(fromUrl url: URL, comletionHandler: @escaping (_ data: Data?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard
                let data = data,
                error == nil,
                let response = response as? HTTPURLResponse,
                response.statusCode >= 200 && response.statusCode < 300 else {
                
                comletionHandler(nil)
                return
            }
            comletionHandler(data)
        }.resume()
    }
}

struct DownloadJSONDataView: View {
    @StateObject var vm = Download()
    
    var body: some View {
        List {
            ForEach(vm.posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .foregroundColor(.gray)
                }.frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct DownloadJSONDataView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadJSONDataView()
    }
}
