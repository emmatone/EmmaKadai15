//
//  EmmaKadai15App.swift
//  EmmaKadai15
//
//  Created by Emma
//

import SwiftUI

@main
struct EmmaKadai15App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Fruits())
        }
    }
}
