//
//  AppdbApp.swift
//  appdb
//
//  Created by ned on 07/01/23.
//

import SwiftUI

@main
struct AppdbApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationStack {
                    AppsView()
                        .navigationTitle("Apps")
                }
                .tabItem {
                    Label("Apps", systemImage: "star")
                }
                
                NavigationStack {
                    AppDetailView(id: "985746746")
                        .navigationTitle("App Detail")
                }
                .tabItem {
                    Label("App Detail", systemImage: "newspaper")
                }

                NavigationStack {
                    NewsView()
                        .navigationTitle("News")
                }
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            }
        }
    }
}