//
//  ContentView.swift
//  Landmarks
//
//  Created by Yukari Yakumo on 17/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CategoryHome()
                .tabItem {
                    Label("Categories", systemImage: "list.bullet.below.rectangle")
                }


            LandmarkList()
                .tabItem {
                    Label("Lists", systemImage: "list.bullet")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
