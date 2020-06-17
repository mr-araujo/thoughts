//
//  SettingsView.swift
//  Thoughts
//
//  Created by Murillo R. Araujo on 17/06/20.
//  Copyright © 2020 MR de Araujo. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State var changeAuto = false
    @State var secs: Double = 8
    
    var body: some View {
        VStack{
            VStack{
                Text("Mudar automaticamente")
                
                Toggle("", isOn: $changeAuto).labelsHidden()
                
            } .padding()
            
            VStack{
                Text("Mudar após \(Int(secs)) segundos")
                
                HStack {
                    Text("5")
                    Slider(value: $secs, in: 5...30, step: 0.1)
                    Text("30")
                }
                
            } .padding()
            
            VStack{
                Text("Esquema de cores")
                
                
            } .padding()
            
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
