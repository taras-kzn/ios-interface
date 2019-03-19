//
//  Tap.swift
//  Weather
//
//  Created by admin on 16/03/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation
import UIKit

class Tap : UIControl{
    
    @objc var heartRed = UIImage(named: "Image")
    @objc var heartBlack = UIImage(named: "heart")
    
    @objc func buttonIsPressed(sender: UIButton){
        var button = sender
        button.setBackgroundImage(heartBlack, for: .normal)
        
    }
    
    @objc func buttonIsTapped(sender: UIButton){
        var button = sender
        button.setBackgroundImage(heartRed, for: .normal)
    }
}
