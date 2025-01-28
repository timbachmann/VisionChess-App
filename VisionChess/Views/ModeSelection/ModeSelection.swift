//
//  ModeSelection.swift
//  VisionChess
//
//  Created by Tim Bachmann on 13.01.2025.
//

import SwiftUI

struct ModeSelection: View {
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Text("Select Mode")
                    .font(.largeTitle)
                
                Spacer()
                HStack(spacing: 24) {
                    Spacer()
                    ToggleImmersiveSpaceButton(title: "Physical Game", image: "physical")
                    Spacer()
                    ToggleImmersiveSpaceButton(title: "Physical Board / Virtual Opponent", image: "mixed")
                    Spacer()
                    ToggleImmersiveSpaceButton(title: "Virtual Board / Virtual Opponent", image: "virtual")
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ModeSelection()
}
