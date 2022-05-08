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
        
        let mySprite = SKSpriteNode(color: .blue, size: CGSize(width: 50, height: 50))
        mySprite.position = CGPoint(x: 150, y: 150)
        mySprite.name = "square"
        
        self.addChild(mySprite)
        
//        let demoAction = SKAction.move(to: CGPoint(x: 300, y: 150), duration: 3)
        let demoAction1 = SKAction.scale(to: 4, duration: 5)
        let demoAction2 = SKAction.rotate(byAngle: 5, duration: 5)
        let actionGroup = SKAction.group([demoAction1, demoAction2])
        let actionSequence = SKAction.sequence([demoAction1, demoAction2])
//        mySprite.run(actionGroup)
        mySprite.run(actionSequence)
    }
}
