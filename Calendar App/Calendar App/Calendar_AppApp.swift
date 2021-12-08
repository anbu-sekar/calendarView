//
//  Calendar_AppApp.swift
//  Calendar App
//
//  Created by Anbusekar Murugesan on 04/12/2021.
//

import SwiftUI

@main
struct Calendar_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
