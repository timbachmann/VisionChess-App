//
//  GroupActivityManager.swift
//  VisionChess
//
//  Created by Tim Bachmann on 13.01.2025.
//
import GroupActivities
import SwiftUI
@preconcurrency import TabletopKit

struct Activity: GroupActivity {
    var metadata: GroupActivityMetadata {
        var metadata = GroupActivityMetadata()
        metadata.type = .generic
        metadata.title = "VisionChess"
        return metadata
    }
}

class GroupActivityManager: Observable {
    var tabletopGame: TabletopGame
    var sessionTask = Task<Void, Never> {}
    
    init(tabletopGame: TabletopGame) {
        self.tabletopGame = tabletopGame
        sessionTask = Task { @MainActor in
            for await session in Activity.sessions() {
                tabletopGame.coordinateWithSession(session)
            }
        }
    }

    deinit {
        tabletopGame.detachNetworkCoordinator()
    }
}
