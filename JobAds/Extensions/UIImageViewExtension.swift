//
//  UIImageViewExtension.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 26.3.24..
//

import Foundation
import UIKit
import Kingfisher

// MARK: - UIImageViewExtension

extension UIImageView {
    
    // MARK: - Functions
    
    func setImage(with job: Job) {
        kf.setImage(with: job.imageUrl)

    }
    
    

}


