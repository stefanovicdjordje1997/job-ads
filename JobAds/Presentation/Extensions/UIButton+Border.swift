//
//  UIButtonExtension.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 28.3.24..
//

import Foundation
import UIKit

// MARK: UIButtonExtension

extension UIButton {
    
    // MARK: - Functions
    
    func addRoundedBorder() {
        layer.cornerRadius = 5
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        layer.masksToBounds = true
        tintColor = .whiteBlack
    }
}
