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
    
    func getActivityViewController() -> UIActivityViewController {
        
        let url = job.shareUrl
        
        let shareSheetViewController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        
        return shareSheetViewController
    }
}
