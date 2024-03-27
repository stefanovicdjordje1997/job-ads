//
//  JobTableCellViewModel.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 26.3.24..
//

import Foundation
import UIKit

class JobTableCellViewModel {
    
    // MARK: - Properties
    
    var cell: JobTableViewCell
    
    // MARK: - Constructor
    
    init(cell: JobTableViewCell) {
        self.cell = cell
    }
    
    // MARK: - Functions
    
    func setupCell(with job: Job) {
        cell.backView.addBorderAndRoundedCorners()
        cell.imageBackView.addBorderAndRoundedCorners()
        cell.backView.addBackgroundShadow()
        cell.positionNameLabel.text = job.positionName
        cell.salaryRangeLabel.text = job.salaryRange
        cell.salaryRangeLabel.textColor = .darkGreyLightGrey
        cell.jobImageView.setImage(with: job)
        cell.selectionStyle = .none
        cell.chevronImageView.tintColor = .darkGreyLightGrey
    }
}

