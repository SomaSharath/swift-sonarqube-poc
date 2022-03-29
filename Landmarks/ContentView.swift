//
//  ContentView.swift
//  Landmarks
//
//  Created by sharath on 5/2/2022.
//

import SwiftUI

struct ContentView: View {
    let env = Environment().configuration(PlistKey.Env)
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            VStack(alignment: .leading) {
                Text("Turtle Rock (Env-\(env))")
                .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                                Text("About Turtle Rock")
                                    .font(.title2)
                                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
