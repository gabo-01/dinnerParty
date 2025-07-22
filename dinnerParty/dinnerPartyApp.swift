//
//  dinnerPartyApp.swift
//  dinnerParty
//
//  Created by Fernando Gabriel Martinez on 22/07/25.
//

import SwiftUI

@main
struct dinnerPartyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
