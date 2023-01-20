//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Alexey Li on 1/19/23.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
