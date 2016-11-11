//
//  GameViewController.swift
//  Vs: Comics, Characters, Movies
//
//  Created by ramiro beltran on 11/11/16.
//  Copyright © 2016 Ramiro Beltran. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene:SKScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scene = MainScene()
        let view = self.view as! SKView?
            
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
                
        // Present the scene
        view?.presentScene(scene)
        view?.ignoresSiblingOrder = true
        view?.showsFPS = true
        view?.showsNodeCount = true
        
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
