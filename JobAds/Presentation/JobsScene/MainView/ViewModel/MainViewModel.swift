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
    let api = ApiManager()
    
    // MARK: - Functions
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        jobs.count
    }
    
    func getData(completionHandler: @escaping (Result<[Job], Error>) -> Void) {
        api.fetchJobs { [weak self] result in
            switch result {
            case.success(let data):
                self?.jobs = data
                completionHandler(.success(data))
            case.failure(let error):
                completionHandler(.failure(error))
            }
        }
    }
    
}
