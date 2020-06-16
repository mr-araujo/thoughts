//
//  ThoughtsView.swift
//  Thoughts
//
//  Created by Murillo R. Araujo on 16/06/20.
//  Copyright © 2020 MR de Araujo. All rights reserved.
//

import SwiftUI

struct ThoughtsView: View {
    var body: some View {
        ZStack {
            
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("steve_jobs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Spacer()
                
                Text("Thoughts")
                    .font(.custom("Savoye LET", size: 50))
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("Steve Jobs")
                    .font(.custom("Savoye LET", size: 30))
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct ThoughtsView_Previews: PreviewProvider {
    static var previews: some View {
        ThoughtsView()
    }
}
