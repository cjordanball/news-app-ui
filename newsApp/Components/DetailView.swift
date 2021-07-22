//
//  DetailView.swift
//  newsApp
//
//  Created by C. Jordan Ball III on 7/22/21.
//

import SwiftUI

struct DetailView: View {
    
    let url: String!;
    
    var body: some View {
        WebView(urlString: url);
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com");
    }
}
