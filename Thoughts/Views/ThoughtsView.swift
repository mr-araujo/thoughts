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
        ZStack{
            Text("").background(Image("steve_jobs").blur(radius: 50))
            
            VStack {
                Image("steve_jobs")
                    .resizable()
                    .aspectRatio(CGSize(width: 750.0, height: 666.0), contentMode: .fit)
                
                Spacer()
                
                Text("Thoughts")
                    .font(.custom("Savoye LET", size: 50))
                    .foregroundColor(.black)
                
                Spacer()
                
                Text("Steve Jobs")
                    .font(.custom("Savoye LET", size: 30))
                    .foregroundColor(.orange)
            }
        }
    }
}

struct ThoughtsView_Previews: PreviewProvider {
    static var previews: some View {
        ThoughtsView()
    }
}
