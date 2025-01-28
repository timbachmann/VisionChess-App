//
//  GameView.swift
//  VisionChess
//
//  Created by Tim Bachmann on 13.01.2025.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismissWindow) private var dismissWindow
    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        NavigationSplitView {
           VStack {
               Button(action: {
                   dismissWindow(id: "Main")
                   //openWindow(id: "Main")
                   print("Show Second Window")
               }) {
                   Text("Dismiss Second Window")
                       .font(.headline)
                       .padding()
                       .background(Color.blue)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
               .buttonStyle(.plain)
           }
           .navigationTitle("Sidebar")
       } detail: {
           Text("Detail")
       }
    }
}

#Preview {
    GameView()
}
