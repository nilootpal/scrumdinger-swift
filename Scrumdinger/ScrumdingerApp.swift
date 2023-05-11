//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Nilootpal Das on 07/01/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
