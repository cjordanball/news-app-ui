//
//  ContentView.swift
//  newsApp
//
//  Created by C. Jordan Ball III on 7/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var netMan = NetworkManager();
    
    var body: some View {
        NavigationView {
            List(netMan.posts) { post in
                if let safeURL = post.url {
                    NavigationLink(destination: DetailView(url: safeURL)){
                        HStack {
                            Text("\(post.points)");
                            Text("\(post.title)");
                        }
                    }
                }
            }
            .navigationBarTitle("Latest News")
        }
        .onAppear{
            self.netMan.fetchData();
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
