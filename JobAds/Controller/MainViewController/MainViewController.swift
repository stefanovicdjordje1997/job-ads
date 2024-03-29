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
        viewModel.getData(reload: jobsTableView, animation: loadingActivityIndicator)
    }
    
    // MARK: - Functions
    
    func openDetail(with job: Job) {
        let detailsViewModel = DetailsViewModel(job: job)
        let detailsController = DetailsViewController(viewModel: detailsViewModel)
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsController, animated: true)
        }
        
    }

}

