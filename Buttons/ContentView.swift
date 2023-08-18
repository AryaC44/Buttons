//
//  ContentView.swift
//  Buttons
//
//  Created by scholar on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
        @State private var textTitle = "What is your name?"
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text("\(textTitle)")
                .font(.title)
            
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.blue, width: 2)
                .padding()
            
            Button("Submit Name") {
                print(name)
                textTitle = "Welcome \(name)!"
            }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.purple)
           
            }
            
            
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

