//
//  WebView.swift
//  newsApp
//
//  Created by C. Jordan Ball III on 7/22/21.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String!;
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView();
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let req = URLRequest(url: url);
                uiView.load(req);
            }
        }
    }
}
