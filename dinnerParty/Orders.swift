//
//  Orders.swift
//  dinnerParty
//
//  Created by Fernando Gabriel Martinez on 22/07/25.
//

import SwiftUI

class Orders{
    var items = [MenuItem]()
    
    var totals:Int{
        if(items.count > 0){
            return items.reduce(0) { $0 + $1.price }
        }else{
            return 0;
        }
    }
    
    func add(item:MenuItem){
        items.append(item)
    }
    
    func remove(item:MenuItem){
        if let index = items.firstIndex(of:item){
            items.remove(at: index)
        }
    }
}
