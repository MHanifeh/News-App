//
//  PostData.swift
//  News App
//
//  Created by MahdiHanifeh on 2/13/1401 AP.
//

import Foundation

struct Result:Codable{
    
    let hits : [Post]
}

struct Post : Codable , Identifiable{
    var id : String{
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
