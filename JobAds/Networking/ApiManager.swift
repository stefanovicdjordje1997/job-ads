//
//  ApiManager.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 26.3.24..
//

import Foundation

enum NetworkError: Error {
    
    case invalidUrlError
    case decodingError
}

// MARK: - Networking

class ApiManager {
    
    private let baseUrl = "https://4a7d50520f0e476db12c79c666115c5c.api.mockbin.io/"
    
    func fetchJobs(completionHandler: @escaping (Result<[Job], Error>) -> Void) {
        guard let url = URL(string: baseUrl) else {
            completionHandler(.failure(NetworkError.invalidUrlError))
            return
        }
        
        URLSession.shared.dataTask(with: url) {dataResponse, urlResponse, error in
    
            if error == nil,
               let data = dataResponse,
               let resultData = try? JSONDecoder().decode(JobWrapper.self, from: data) {
                completionHandler(.success(resultData.jobs))
            } else {
                completionHandler(.failure(NetworkError.decodingError))
            }
            
        }.resume()
    }
    
}
