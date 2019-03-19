//
//  MissileCreator.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/19.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

class MissileCreator {

    let parentView: UIView
    let aircraft: UIButton

    init(parentView: UIView, aircraft:UIButton) {
        
        self.parentView = parentView
        self.aircraft = aircraft
    }
    
    func create(missile: MissileTypes) -> MissileProtocol {
        
        switch missile {
            
        case .missile1:
            
            return Missile1(parentView: parentView, aircraft: aircraft)
            
        case .missile2:
            
            return Missile2(parentView: parentView, aircraft: aircraft)
            
        case .missile3:
            
            return Missile3(parentView: parentView, aircraft: aircraft)
        }
    }
}

