//
//  ViewController.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/18.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bulletCount = 100
    var missileSelected:Missile = .missile1
    var lastTouchesPoint = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var aircraft: UIButton!
    
    @IBOutlet weak var fireButton: UIButton!
    @IBOutlet weak var missileImageView: UIImageView!
    
    @IBAction func selectMissile1(_ sender: UIButton) {
        missileSelected = .missile1
        missileImageView.image = UIImage(named: missileSelected.getImageName())
    }
    
    @IBAction func selectMissile2(_ sender: UIButton) {
        missileSelected = .missile2
        missileImageView.image = UIImage(named: missileSelected.getImageName())
    }
    
    @IBAction func selectMissile3(_ sender: UIButton) {
        missileSelected = .missile3
        missileImageView.image = UIImage(named: missileSelected.getImageName())
    }
    
    @IBAction func fire(_ sender: UIButton) {
        
        if bulletCount < missileSelected.consumeBulletCount() {
            return
        }
        bulletCount = bulletCount - missileSelected.consumeBulletCount()
        countLabel.text = "\(bulletCount)"
        
        MissileManager.fire(missile: missileSelected, aircraft: aircraft, atSpace: view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "\(bulletCount)"
        
        aircraft.center = CGPoint(x: view.frame.width/2, y: fireButton.frame.origin.y - 22)
    }

    @IBAction func dragPlan(_ sender: UIButton, event: UIEvent) {
        if let touchesPoint = event.allTouches?.first?.location(in: self.view) {
            if lastTouchesPoint != CGPoint(x: 0, y: 0) {
                let xGap = touchesPoint.x - lastTouchesPoint.x
                let yGap = touchesPoint.y - lastTouchesPoint.y
                sender.frame.origin = CGPoint(x: sender.frame.origin.x+xGap, y: sender.frame.origin.y+yGap)
            }
            lastTouchesPoint = touchesPoint
        }
    }

    @IBAction func planTouchUpInside(_ sender: UIButton) {
        lastTouchesPoint = CGPoint(x: 0, y: 0)
    }
    
}

