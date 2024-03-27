//
//  UIViewExtension.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 26.3.24..
//

import Foundation
import UIKit

// MARK: - UIViewExtension

extension UIView {
    
    // MARK: - Functions
    
    func addBorderAndRoundedCorners() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.blackWhite.cgColor
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }
    
    func addBackgroundShadow() {
            self.layer.masksToBounds = false
            self.layer.shadowColor = UIColor.blackWhite.cgColor
            self.layer.shadowOpacity = 0.1
            self.layer.shadowOffset = CGSize(width: 0, height: 1.5)
            self.layer.shadowRadius = 3 
            self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        }
}
