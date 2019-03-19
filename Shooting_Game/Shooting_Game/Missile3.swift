//
//  Missile3.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/19.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

class Missile3: BaseMissile {
    override func configure() {
        super.configure()
        
        missileImageView.image = UIImage(named: MissileImageNames.missile3.rawValue)
        speed = 10
        consumeBullet = 3
    }
}
