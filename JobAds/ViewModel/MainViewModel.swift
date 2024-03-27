//
//  MainViewModel.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 26.3.24..
//

import Foundation
import UIKit

class MainViewModel {
    
    // MARK: - Properties
    
    var jobs = [Job]()
    
    // MARK: - Functions
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        jobs.count
    }
    
    func getData(reload tableView: UITableView, animation: UIActivityIndicatorView) {
        ApiManager.fetchJobs { result in
            switch result {
            case .success(let data):
                self.jobs = data
                DispatchQueue.main.async {
                    tableView.reloadData()
                    animation.stopAnimating()
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
