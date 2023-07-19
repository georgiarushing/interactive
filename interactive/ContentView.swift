//
//  ContentView.swift
//  interactive
//
//  Created by Scholar on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack
        {
            Text(textTitle)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 41.0)
                
        
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Button("Submit Name")
            {
                textTitle = "Welcome, \(name)!"
            }
            .padding(.top, 41.0)
            .font(.largeTitle)
            .buttonStyle(.borderedProminent)
            .tint(Color(hue: 0.873, saturation: 0.557, brightness: 0.944))
                
        }
        .padding()
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
