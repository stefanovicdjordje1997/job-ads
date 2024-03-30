//
//  ViewController.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 25.3.24..
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    // IBOutlets
    @IBOutlet weak var jobsTableView: UITableView!
    @IBOutlet weak var loadingActivityIndicator: UIActivityIndicatorView!
    
    // Variables
    var viewModel: MainViewModel = MainViewModel()
    var jobs = [Job]()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Start loading animation while fetching data
        loadingActivityIndicator.startAnimating()
        
        // Set up table view
        setupTableView()
        
        // Setting title to MainView
        title = "Jobs"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Fetching data from api, reloading tableView and stopping animation when data is loaded
        viewModel.getData { [weak self] result in
            
            switch result {
                
            case .success(let data):
                self?.jobs = data
                DispatchQueue.main.async {
                    self?.jobsTableView.reloadData()
                    self?.loadingActivityIndicator.stopAnimating()
                }
                
            case .failure(_):
                DispatchQueue.main.async {
                    self?.showAlert(title: "Oops! An Error Occurred.", message: "Job positions cannot be fetched.")
                }
                
            }
        }
    }
    
    // MARK: - Functions
    
    func openDetail(with job: Job) {
        let detailsViewModel = DetailsViewModel(job: job)
        let detailsController = DetailsViewController(viewModel: detailsViewModel)
        
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsController, animated: true)
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

