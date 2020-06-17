//
//  ContentView.swift
//  Thoughts
//
//  Created by Murillo R. Araujo on 16/06/20.
//  Copyright © 2020 MR de Araujo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
           ThoughtsView()
                .tabItem {
                    VStack {
                        Image("quotes")
                           .renderingMode(.template)
                        Text("Thougts")
                    }
            }
            .tag(0)
            
           SettingsView()
                .tabItem {
                    VStack {
                        Image("settings")
                            .renderingMode(.template)
                        Text("Settings")
                        
                    }
            }
            .tag(1)
        } .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
