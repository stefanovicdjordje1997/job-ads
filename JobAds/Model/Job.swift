//
//  Job.swift
//  JobAds
//
//  Created by Djordje Stefanovic on 26.3.24..
//

import Foundation

// MARK: - Job model

struct Job: Codable {
    let id: Int
    let companyName: String
    let imageUrl: URL
    let positionName: String
    let salaryRange: String
    let technologies: [String]
    let positionDescription: String
    let companyDescription: String
    let shareUrl: URL

    // MARK: - Job model coding keys
    
    enum CodingKeys: String, CodingKey {
        case id
        case companyName = "company_name"
        case imageUrl = "image_url"
        case positionName = "position_name"
        case salaryRange = "salary_range"
        case technologies
        case positionDescription = "position_description"
        case companyDescription = "company_description"
        case shareUrl = "share_url"
    }
}

// MARK: - JobWrapper

struct JobWrapper: Codable {
    let jobs: [Job]
}
