//
//  User.swift
//  Tender
//
//  Created by Tomoki Takasawa on 2/12/20.
//  Copyright © 2020 Tender. All rights reserved.
//

import Foundation

class User {
    var userId: String
    var firstName: String?
    var lastName: String?
    var email: String?
    var password: String?
    var age: Int?
    var gender: Gender?
    
    init(userId: String){
        self.userId = userId
    }
}

enum Gender: String, Codable {
    case male
    case female
    case other
    case noAnswer
    
    var displayAs: String {
        switch  self {
        case .male:
            return "Men"
        case .female:
            return "Women"
        case .other:
            return "Others"
        case .noAnswer:
            return "Prefer not to answer"
        }
    }
}
