//
//  WebView.swift
//  News App
//
//  Created by MahdiHanifeh on 2/13/1401 AP.
//

import Foundation
import SwiftUI
import WebKit


struct WebView:UIViewRepresentable{
    let urlString:String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
