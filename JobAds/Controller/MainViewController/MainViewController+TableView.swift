//
//  MainViewController+TableView.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 26.3.24..
//

import Foundation
import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Functions
    
    func setupTableView() {
        jobsTableView.delegate = self
        jobsTableView.dataSource = self
        jobsTableView.register(JobTableViewCell.register(), forCellReuseIdentifier: JobTableViewCell.identifier)
        jobsTableView.separatorStyle = .none
    }
    
    // MARK: - TableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: JobTableViewCell.identifier, for: indexPath) as? JobTableViewCell else { return UITableViewCell() }
        
        cell.viewModel.setupCell(with: viewModel.jobs[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let job = viewModel.jobs[indexPath.row]
        self.openDetail(with: job)
    }
    
}
