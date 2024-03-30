//
//  UILabelExtension.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 28.3.24..
//

import Foundation
import UIKit

// MARK: - UILabelExtension

extension UILabel {
    
    // MARK: - Functions
    
    func addBorderToLabel() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.blackWhite.cgColor
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }
}
