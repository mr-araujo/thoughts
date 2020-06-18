//
//  ThoughtsView.swift
//  Thoughts
//
//  Created by Murillo R. Araujo on 16/06/20.
//  Copyright © 2020 MR de Araujo. All rights reserved.
//

import SwiftUI

struct ThoughtsView: View {
    var quote: Quote
    
    var body: some View {
        ZStack{
            Text("").background(Image(quote.image).blur(radius: 50))
            
            VStack {
                Image(quote.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text(quote.quote)
                    .font(.custom("Savoye LET", size: 50))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                Text(quote.author)
                    .font(.custom("Savoye LET", size: 40))
                    .foregroundColor(.orange)
                
                Spacer()
            }
        }
    }
}

struct ThoughtsView_Previews: PreviewProvider {
    static var previews: some View {
        ThoughtsView(quote: QuotesController().quotes[10])
    }
}
