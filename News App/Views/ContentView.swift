//
//  ContentView.swift
//  News App
//
//  Created by MahdiHanifeh on 2/12/1401 AP.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            
            ZStack{
                
                List(networkManager.posts){post in
                    
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack{
                            Text(String(post.points))
                                .padding()
                                .background(Color.red)
                                .clipShape(Circle())
                            Text(post.title)
                            
                        }
                    }
                    
                    .listRowBackground(
                        LinearGradient(colors:[
                            Color(#colorLiteral(red: 0.5996136665, green: 0.6586354375, blue: 1, alpha: 1)),
                            Color(#colorLiteral(red: 0.3655320406, green: 0.4819711447, blue: 1, alpha: 1)),
                        ]
                                       , startPoint: .leading
                                       , endPoint: .trailing)
                    )
                }
                
                .foregroundColor(.black)
                .statusBar(hidden: true)
                .listStyle(PlainListStyle())

                .navigationTitle("News")

            }
            .background(  LinearGradient(colors:[
                Color(#colorLiteral(red: 0.5996136665, green: 0.6586354375, blue: 1, alpha: 1)),
                Color(#colorLiteral(red: 0.3655320406, green: 0.4819711447, blue: 1, alpha: 1)),
            ]
                                         , startPoint: .leading
                                         , endPoint: .trailing))
            
            
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}





