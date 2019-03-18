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
    var missleSelected:Missile = .missile1
    var lastTouchesPoint = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var plan: UIButton!
    
    @IBOutlet weak var fireButton: UIButton!
    @IBOutlet weak var missleImageView: UIImageView!
    
    @IBAction func selectMissile1(_ sender: UIButton) {
        missleSelected = .missile1
        missleImageView.image = UIImage(named: missleSelected.getImageName())
    }
    
    @IBAction func selectMissile2(_ sender: UIButton) {
        missleSelected = .missile2
        missleImageView.image = UIImage(named: missleSelected.getImageName())
    }
    
    @IBAction func selectMissile3(_ sender: UIButton) {
        missleSelected = .missile3
        missleImageView.image = UIImage(named: missleSelected.getImageName())
    }
    
    @IBAction func fire(_ sender: UIButton) {
        
        if bulletCount < missleSelected.getBulletCount() {
            return
        }
        bulletCount = bulletCount - missleSelected.getBulletCount()
        countLabel.text = "\(bulletCount)"
        
        //TODO: fire missle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "\(bulletCount)"
        
        plan.center = CGPoint(x: view.frame.width/2, y: fireButton.frame.origin.y - 22)
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

