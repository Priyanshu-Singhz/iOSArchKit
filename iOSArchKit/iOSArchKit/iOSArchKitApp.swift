//
//  iOSArchKitApp.swift
//  iOSArchKit
//
//  Created by Priyanshu Singh on 14/02/25.
//

import SwiftUI

@main
struct iOSArchKitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
