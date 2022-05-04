//
//  DetailView.swift
//  News App
//
//  Created by MahdiHanifeh on 2/13/1401 AP.
//

import SwiftUI


struct DetailView: View {
   
    let url : String?
    var body: some View {
        WebView(
        urlString: url
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}







