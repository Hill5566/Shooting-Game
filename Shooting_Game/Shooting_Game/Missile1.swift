//
//  Missile1.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/19.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

class Missile1: BaseMissile {
    override func configure() {
        super.configure()
        
        missileImageView.image = UIImage(named: MissileImageNames.missile1.rawValue)        
        speed = 20
        consumeBullet = 1
    }
}
