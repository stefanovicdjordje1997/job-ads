//
//  UILabelExtension.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 28.3.24..
//

import Foundation
import UIKit

extension UILabel {
    
    func addBorderToLabel() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.blackWhite.cgColor
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
    }
}
