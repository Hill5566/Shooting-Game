//
//  Missile2.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/19.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

class Missile2: BaseMissile {
    override func configure() {
        super.configure()
        
        missileImageView.image = UIImage(named: MissileImageNames.missile2.rawValue)
        speed = 15
        consumeBullet = 2
    }
}
