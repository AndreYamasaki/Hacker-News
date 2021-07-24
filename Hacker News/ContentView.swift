//
//  ContentView.swift
//  Hacker News
//
//  Created by André Yamasaki on 20/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(objectID: <#T##String#>, point: <#T##Int#>, title: "", url: <#T##String#>),
//    Post(objectID: <#T##String#>, point: <#T##Int#>, title: "", url: <#T##String#>),
//    Post(objectID: <#T##String#>, point: <#T##Int#>, title: "", url: <#T##String#>)
//]
