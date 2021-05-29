//
//  ContentView.swift
//  Finder-SwiftUI-version
//
//  Created by Anselm Jade Jamig on 5/29/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var searchBar: SearchBar = SearchBar()
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: EmptyView()) {
                        Label("Home", systemImage: "house")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Downloads", systemImage: "arrow.down.circle")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Recents", systemImage: "clock")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Airdrop", systemImage: "airplayaudio")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Apps", systemImage: "folder")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Documents", systemImage: "doc")
                    }
                }
                
                Section {
                    NavigationLink(destination: EmptyView()) {
                        Label("iCloud", systemImage: "icloud")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Documents", systemImage: "doc")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Desktop", systemImage: "menubar.dock.rectangle")
                    }
                }
                
                Section {
                    NavigationLink(destination: EmptyView()) {
                        Label("MacBook", systemImage: "laptopcomputer")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("iPhone", systemImage: "iphone")
                    }
                }
            }
            .add(self.searchBar)
            .listStyle(InsetGroupedListStyle())
            .navigationBarItems(trailing: Button(action: {}) {Image(systemName: "list.bullet")})
            .navigationTitle("Finder")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
