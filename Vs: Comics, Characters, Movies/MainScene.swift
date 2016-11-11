//
//  MainScene.swift
//  Vs: Comics, Characters, Movies
//
//  Created by ramiro beltran on 11/11/16.
//  Copyright © 2016 Ramiro Beltran. All rights reserved.
//

import Foundation
import SpriteKit

class MainScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        self.backgroundColor = .black
        setTopDiv()
        setMainDiv()
    }
    
    func setMainDiv() {
        

        let width = self.size.width * 0.6
        let height = width * 1.5
        
        let mainDiv = SKShapeNode(rectOf: CGSize(width: width, height: height))
        mainDiv.position = CGPoint(x: 0.0 + (width * 0.6), y: 0.0 + (height * 0.8))
        mainDiv.fillColor = .clear
        mainDiv.strokeColor = .clear
        mainDiv.zPosition = 1
        addChild(mainDiv)
        
        let diff = (height - width) / 2
        
        let subDiv1 = SKShapeNode(rectOf: CGSize(width: width, height: width))
        subDiv1.position = CGPoint(x: 0.0, y: 0.0 + diff)
        subDiv1.fillColor = customYellow
        subDiv1.strokeColor = .clear
        subDiv1.zPosition = 2
        mainDiv.addChild(subDiv1)
        
        let subDiv2 = SKShapeNode(rectOf: CGSize(width: width, height: height * 0.25))
        subDiv2.position = CGPoint(x: 0.0, y: 0.0 - ((height/2) - (subDiv2.frame.size.height/2)))
        subDiv2.fillColor = customYellow
        subDiv2.strokeColor = .clear
        subDiv2.zPosition = 2
        mainDiv.addChild(subDiv2)
    }
    
    func setTopDiv() {
        
        let height = self.size.height * 0.2
        
        let div = SKShapeNode(rect: CGRect(x: 0.0, y: self.size.height * 0.8, width: self.size.width, height: height))
        div.fillColor = customYellow
        div.strokeColor = .clear
        div.zPosition = 1
        addChild(div)
        
        let label = SKLabelNode(text: "Vs")
        label.fontSize = 48.0
        label.fontColor = customBlack
        label.zPosition = 2
        label.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.85)
        addChild(label)
        
        let subLabel = SKLabelNode(text: "Comics, Characters & Movies")
        subLabel.fontColor = customYellow
        subLabel.fontSize = 18.0
        subLabel.zPosition = 2
        subLabel.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.75)
        addChild(subLabel)
    }
    
}
