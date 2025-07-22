//
//  Helpers.swift
//  dinnerParty
//
//  Created by Fernando Gabriel Martinez on 22/07/25.
//
import UIKit

extension Bundle {
    func decode<T:Decodable>(_ type: T.Type, from file: String ) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Couldn't find \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url)else{
            fatalError( "Couldn't load \(file) as Data.")
        }
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self ,from:data) else {
            fatalError("failed to decode \(file)")
        }
        return loaded
    }
}
 
