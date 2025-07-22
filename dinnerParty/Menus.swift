//
//  Menus.swift
//  dinnerParty
//
//  Created by Fernando Gabriel Martinez on 22/07/25.
//

import SwiftUI

struct MenuSection: Codable{
    var id:UUID
    var name:String
    var items:[MenuItem]
}


struct MenuItem:Codable, Hashable{
    var id:UUID
    var name:String
    var photo:String
    var price:Int
    var restrictions:[String]
    var description:String
    
    
    
    var mainImage:String{
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    var thumbnailImage:String{
        "\(mainImage)-thumb"
    }
}
