//
//  DetailsViewModel.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 27.3.24..
//

import Foundation
import UIKit

class DetailsViewModel {
    
    // MARK: - Properties
    
    var job: Job
    
    
    // MARK: - Constructors
    
    init(job: Job) {
        self.job = job
    }
    
    func addTechnologies(to stackView: UIStackView) {
        for technology in job.technologies {
            let label = UILabel()
            label.text = " \(technology)    "
            label.textAlignment = .center
            label.addBorderToLabel()
            
            stackView.addArrangedSubview(label)
            }
    }
    
    func getActivityViewController() -> UIActivityViewController {
        let url = job.shareUrl
          
        
        let shareSheetViewController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        
        return shareSheetViewController
    }
}
