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
    @State var quote = QuotesController().getRandomQuote()
    @State var timer: Timer?
    
    var body: some View {
        TabView(selection: $selection){
            ThoughtsView(quote: quote)
                .tabItem {
                    VStack {
                        Image("quotes")
                            .renderingMode(.template)
                        Text("Thougts")
                    }
            }
            .tag(0)
            .onAppear{
                self.prepareQuote()
            }
            
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
    
    func prepareQuote(){
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 8, repeats: true) { timer in
            self.quote = QuotesController().getRandomQuote()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
