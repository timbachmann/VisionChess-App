# VisionChess - visionOS Application

The **visionOS application** is a key component of the Mixed Reality chess system **VisionChess**, designed to seamlessly integrate physical chessboards with virtual overlays. It leverages Apple Vision Pro's advanced Mixed Reality capabilities to provide real-time strategic assistance and immersive gameplay.

## Overview

The visionOS client application serves as the primary interface for users, running exclusively on Apple Vision Pro. It performs several critical functions:

- **Object Detection**: Recognizes physical chessboards and pieces using advanced object detection and a custom-trained machine learning model.
- **Real-Time Board State Recognition**: Captures the physical game state, identifying the configuration and positions of chess pieces accurately.
- **Augmented Reality Overlays**: Projects virtual chess pieces, suggested moves, and strategy annotations directly onto the physical chessboard.
- **Intuitive User Experience**: Provides natural interaction capabilities for players to engage with the enhanced gameplay environment.

## Features

1. **Mixed Reality Enhancements**
   - Overlays virtual chess pieces on the physical board for a hybrid gameplay experience.
   - Displays move suggestions and strategy annotations in real-time.

2. **Machine Learning Integration**
   - Custom-trained model for recognizing chess pieces and board configurations under various conditions.

3. **Real-Time Gameplay**
   - Continuous tracking of the chessboard state ensures dynamic updates and feedback.

4. **User-Centric Design**
   - Provides visual teaching tools for beginners and advanced analytics for experienced players.

## System Architecture

The visionOS client application works in conjunction with the server and chess engine (Stockfish) to deliver an immersive chess experience:

1. **Client Application**
   - Captures and processes the real-time board state using machine learning models.
   - Displays AR projections of suggested moves and strategies.

2. **Server**
   - Receives board state data from the client application.
   - Processes data and communicates with the Stockfish chess engine via the Universal Chess Interface (UCI) protocol.
   - Sends strategic insights and move suggestions back to the client application.

3. **Chess Engine (Stockfish)**
   - Evaluates the board state with its NNUE (efficiently updatable neural network).
   - Generates optimal move suggestions and strategic insights.

4. **Data Pipeline**
   - The client application captures the board state and sends it to the server.
   - The server processes the state and communicates with Stockfish for analysis.
   - Stockfish generates move suggestions, which are sent back through the server to the client application for display in AR projections.

## Key Technologies

- **RealityKit** and **ARKit** for AR rendering and scene management.
- **CoreML** for real-time object detection and piece recognition.
- **Stockfish** chess engine for advanced move analysis and strategy generation.

## Training and Gameplay Modes

1. **Physical Play**: Use the physical chessboard with virtual enhancements.
2. **Mixed Reality Gameplay**: Combines physical and virtual elements for a hybrid experience.
3. **Virtual Simulations**: Fully virtual gameplay for practice and analysis.

### Player Features

- **Beginners**: Visual teaching tools and guided strategies.
- **Advanced Players**: Real-time analysis and strategic insights to fine-tune tactics.

## Setup and Installation

1. Clone the repository:
    ```bash
    git clone <repository-url>
    cd VisionChess
    ```

2. Open the Xcode project:
    ```bash
    open VisionChess.xcodeproj
    ```

3. Ensure you have the following:
    - Xcode 14 or later
    - Apple Vision Pro with visionOS

4. Build and run the app on a Vision Pro device.

## License

This project is licensed under the terms of the included `LICENSE` file.
