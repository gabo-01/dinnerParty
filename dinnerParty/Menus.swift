//
//  Menus.swift
//  dinnerParty
//
//  Created by Fernando Gabriel Martinez on 22/07/25.
//

import SwiftUI

struct MenuSection: Codable,Identifiable{
    var id:UUID
    var name:String
    var items:[MenuItem]
}


struct MenuItem:Codable, Equatable,Identifiable{
    var id:UUID
    var name:String
    var photoCredit:String
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
