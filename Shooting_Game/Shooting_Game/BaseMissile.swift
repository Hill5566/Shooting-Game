//
//  BaseMissile.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/19.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

protocol MissileProtocol {
    func configure()
    func position()
    func fire()
    
    var missileImageView: UIImageView { get }
    var parentView: UIView { get }
    var aircraft:UIButton { get }
    var speed:Double { get }
    var consumeBulletCount:Int { get }
}

class BaseMissile: MissileProtocol {
    
    var missileImageView: UIImageView
    var parentView: UIView
    var aircraft:UIButton
    var consumeBulletCount: Int
    var speed: Double
    
    init(parentView: UIView, aircraft:UIButton, imageName:String = "missile1", speed:Double = 30, consumeBulletCount:Int = 1) {
        self.parentView = parentView
        self.aircraft = aircraft
        self.missileImageView = UIImageView(image: UIImage(named: imageName))
        self.speed = speed
        self.consumeBulletCount = consumeBulletCount
    }
    
    func configure() {
        
    }
    
    func position() {
        missileImageView.center = CGPoint(x: aircraft.center.x, y: aircraft.frame.origin.y - 16)
    }
    
    func fire() {
        configure()
        position()
        parentView.addSubview(missileImageView)
        
        UIView.animate(withDuration: speed, delay: 0, options: [.curveLinear], animations: {
            self.missileImageView.center.y = self.missileImageView.center.y - 2000
        }) { (_) in
            self.missileImageView.removeFromSuperview()
        }
    }
}

enum MissileTypes {
    case missile1
    case missile2
    case missile3
}

enum MissileImageNames: String {
    case missile1 = "missile1"
    case missile2 = "missile2"
    case missile3 = "missile3"
}
