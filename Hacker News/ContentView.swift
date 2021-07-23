//
//  ContentView.swift
//  Hacker News
//
//  Created by André Yamasaki on 20/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hello"),
    Post(id: "3", title: "Hello")
]
