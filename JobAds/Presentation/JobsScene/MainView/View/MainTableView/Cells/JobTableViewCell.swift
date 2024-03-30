//
//  JobTableViewCell.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 26.3.24..
//

import UIKit

class JobTableViewCell: UITableViewCell {

    // MARK: - Properties
    
    // IBOutlets
    @IBOutlet weak var chevronImageView: UIImageView!
    @IBOutlet weak var imageBackView: UIView!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var salaryRangeLabel: UILabel!
    @IBOutlet weak var positionNameLabel: UILabel!
    @IBOutlet weak var jobImageView: UIImageView!
    
    // Variables
    public static var identifier = "JobTableViewCell"
        
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - Functions
    
    func setupCell(with job: Job) {
        jobImageView.setImage(with: job.imageUrl)
        positionNameLabel.text = job.positionName
        salaryRangeLabel.text = job.salaryRange
        
        backView.addBorderToView()
        imageBackView.addBorderToView()
        backView.addBackgroundShadow()
        
        salaryRangeLabel.textColor = .darkGreyLightGrey
        chevronImageView.tintColor = .darkGreyLightGrey
        
        selectionStyle = .none
    }
    
}
