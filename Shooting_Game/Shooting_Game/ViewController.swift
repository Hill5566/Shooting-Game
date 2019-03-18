//
//  ViewController.swift
//  Shooting_Game
//
//  Created by Lin Hill on 2019/3/18.
//  Copyright © 2019 Lin Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bulletCount = 10
    
    var lastTouchesPoint = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var plan: UIButton!
    
    @IBOutlet weak var missleImageView: UIImageView!
    @IBAction func selectMissle1(_ sender: UIButton) {
    
    }
    
    @IBAction func selectMissle2(_ sender: UIButton) {
        
    }
    
    @IBAction func selectMissle3(_ sender: UIButton) {
        
    }
    
    @IBAction func fire(_ sender: UIButton) {
        
        
        if bulletCount < 1 {
            //TODO : alert no
            //TODO : check 3 missle
            return
        }
        bulletCount = bulletCount - 1
        countLabel.text = "\(bulletCount)"
        
        //TODO: fire missle
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "\(bulletCount)"
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

