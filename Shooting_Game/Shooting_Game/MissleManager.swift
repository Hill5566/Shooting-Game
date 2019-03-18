//
//  MissleManager.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/18.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

class MissleManager {
    
    func fire() {
        
        
    }
}

enum Missile {
    case missile1
    case missile2
    case missile3
    
    func getImageName() -> String {
        switch self {
        case .missile1:
            return "missile1"
        case .missile2:
            return "missile2"
        case .missile3:
            return "missile3"
        }
    }
    func getBulletCount() -> Int {
        switch self {
        case .missile1:
            return 1
        case .missile2:
            return 2
        case .missile3:
            return 3
        }
    }
}

