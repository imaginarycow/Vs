//
//  GlobalData.swift
//  Vs: Comics, Characters, Movies
//
//  Created by ramiro beltran on 11/11/16.
//  Copyright © 2016 Ramiro Beltran. All rights reserved.
//

import Foundation
import SpriteKit

let custFont = "PhantomFingers" //need to change this!

//setup local storage
let userData = UserDefaults.standard

//screen height and width of user's device
var screenHeight:CGFloat = 0.0
var screenWidth:CGFloat = 0.0
var scale:CGFloat = 0.0

//color theme1
let customBlue = UIColor(red: 58/255, green: 120/255, blue: 192/255, alpha: 1.0)
let customRed = UIColor(red: 255/255, green: 166/255, blue: 0/255, alpha: 1.0)

//color theme2
let customBlack = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
let customYellow = UIColor(red: 179/255, green: 181/255, blue: 33/255, alpha: 1.0)

//colorTheme3
let customPurple = UIColor(red: 176/255, green: 52/255, blue: 198/255, alpha: 1.0)
let customOrange = UIColor(red: 73/255, green: 175/255, blue: 93/255, alpha: 1.0)
