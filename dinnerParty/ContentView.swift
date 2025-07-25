//
//  ContentView.swift
//  dinnerParty
//
//  Created by Fernando Gabriel Martinez on 22/07/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let menu =  Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
     
        NavigationStack{
            List{
                ForEach(menu){section in
                    
                    Section(section.name){
                        
                        ForEach(section.items){item in
                            ItemRow(item:item)
                            
                        }
                        
                    }
                    
                }
             
            }.navigationTitle("Menu")
                .listStyle(.grouped)
        }
      
      
             
    }
    
    
    
    
    
}

struct ContentView_Previews:PreviewProvider{
    static var previews:some View{
        ContentView()
    }
}
