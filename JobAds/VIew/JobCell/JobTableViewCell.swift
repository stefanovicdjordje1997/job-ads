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
    
    public static func register() -> UINib {
        UINib(nibName: identifier, bundle: nil)
    }
    
    func setupCell(with job: Job) {
        backView.addBorderToView()
        imageBackView.addBorderToView()
        backView.addBackgroundShadow()
        positionNameLabel.text = job.positionName
        salaryRangeLabel.text = job.salaryRange
        salaryRangeLabel.textColor = .darkGreyLightGrey
        jobImageView.setImage(with: job.imageUrl)
        selectionStyle = .none
        chevronImageView.tintColor = .darkGreyLightGrey
    }
    
}
