//
//  GameScene.swift
//  Pierre The Penguin
//
//  Created by Joshua Baker on 5/6/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        // Make the scene position from its lower left corner, regardless of any other settings.
        self.anchorPoint = .zero
        
        self.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.95, alpha: 1.0)
        
        let bee = SKSpriteNode(imageNamed: "bee")
//        bee.size = CGSize(width: 100, height: 100)
        bee.position = CGPoint(x: 250, y: 250)
        
        self.addChild(bee)
    }
}
