//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Nilootpal Das on 07/01/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
