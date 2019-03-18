//
//  MissleManager.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/18.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

class MissileManager {
    
    static func fire(missile:Missile, aircraft:UIButton, atSpace view:UIView) {
        let bullet = UIImageView(image: UIImage(named: missile.getImageName()))
        bullet.center = CGPoint(x: aircraft.center.x, y: aircraft.frame.origin.y - 8)
        view.addSubview(bullet)
        UIView.animate(withDuration: missile.getSpeed(), delay: 0, options: [.curveLinear], animations: {
            bullet.center.y = bullet.center.y - 2000
        }) { (_) in
            bullet.removeFromSuperview()
        }
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
    func consumeBulletCount() -> Int {
        switch self {
        case .missile1:
            return 1
        case .missile2:
            return 2
        case .missile3:
            return 3
        }
    }
    func getSpeed() -> Double {
        switch self {
        case .missile1:
            return 20
        case .missile2:
            return 15
        case .missile3:
            return 10
        }
    }
}

