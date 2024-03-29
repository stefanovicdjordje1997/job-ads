//
//  DetailsViewController.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 27.3.24..
//

import UIKit

class DetailsViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var fixedTechnologiesLabel: UILabel!
    @IBOutlet weak var fixedAboutPositionLabel: UILabel!
    @IBOutlet weak var fixedAboutCompanyLabel: UILabel!
    @IBOutlet weak var fixedSalaryRangeLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var technologiesStackView: UIStackView!
    @IBOutlet weak var aboutPositionLabel: UILabel!
    @IBOutlet weak var aboutCompanyLabel: UILabel!
    @IBOutlet weak var headerBackUIView: UIView!
    @IBOutlet weak var salaryRangeLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var jobImageView: UIImageView!
    var viewModel: DetailsViewModel
    
    // MARK: - Constructors
    
    init(viewModel: DetailsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }

    func configView() {
        headerBackUIView.addBorderToView()
        self.title = viewModel.job.positionName
        jobImageView.setImage(with: viewModel.job)
        companyNameLabel.text = viewModel.job.companyName
        salaryRangeLabel.text = viewModel.job.salaryRange
        aboutCompanyLabel.text = viewModel.job.companyDescription
        aboutPositionLabel.text = viewModel.job.positionDescription
        viewModel.addTechnologies(to: technologiesStackView)
        fixedSalaryRangeLabel.addBorderToLabel()
        fixedAboutCompanyLabel.addBorderToLabel()
        fixedAboutPositionLabel.addBorderToLabel()
        fixedTechnologiesLabel.addBorderToLabel()
        headerBackUIView.addBackgroundShadow()
        shareButton.addRoundedBorder()
        shareButton.addBackgroundShadow()
    }
    
    @IBAction func share(_ sender: Any) {
        present(viewModel.getActivityViewController(), animated: true)
    }
    
}
