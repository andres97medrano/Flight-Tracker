//
//  UIHelperExtension.swift
//  Flight Tracker
//
//  Created by Andrés Medrano on 10/12/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    private func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0.0,y: 0.0,width: 1.0,height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    func setBackgroundColor(color: UIColor, forUIControlState state: UIControl.State) {
        self.setBackgroundImage(imageWithColor(color: color), for: state)
    }
    
}
