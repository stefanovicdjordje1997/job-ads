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
    public static var identifier: String {
        get {
            return "JobTableViewCell"
        }
    }
    
    lazy var viewModel: JobTableCellViewModel = {
            return JobTableCellViewModel(cell: self)
        }()
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - Functions
    
    public static func register() -> UINib {
        UINib(nibName: identifier, bundle: nil)
    }
    
}
