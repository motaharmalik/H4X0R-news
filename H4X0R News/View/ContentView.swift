//
//  ContentView.swift
//  H4X0R News
//
//  Created by motahar malik on 17/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
                
            }.navigationTitle("H4X0R News")
            
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}
//
//let posts = [
//Post(objectID: "1", title: "Hello", points: 1, url: "hello"),
//Post(objectID: "2", title: "Hola", points: 1, url: "hello")
//]


