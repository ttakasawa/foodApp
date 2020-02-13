//
//  Card.swift
//  Tender
//
//  Created by Tomoki Takasawa on 2/12/20.
//  Copyright © 2020 Tender. All rights reserved.
//

import Foundation
import UIKit

protocol CardProtocol {
    var cardId: String { get }
    var imageUrls: [String]? { get }
    var description: String? { get }
    
    func set(name: String, description: String?, images: [UIImage])
}


class Restaurant: CardProtocol {
    
    var cardId: String
    var imageUrls: [String]?
    var description: String?
    
    var priceRange: String?
    
    init(cardId: String){
        // This should  be unique throughout system
        self.cardId = cardId
    }
    
    func set(name: String, description: String?, images: [UIImage]) {
        // Upload images to backend and get urls, then attach them to self.imageUrls
    }
}

class Recipe: CardProtocol {
    var cardId: String
    var imageUrls: [String]?
    var description: String?
    
    var recipe: String?
    var price: Int?
    var time: Int?
    
    init(cardId: String){
        // This should  be unique throughout system
        self.cardId = cardId
    }
    
    func set(name: String, description: String?, images: [UIImage]) {
        // Upload images to backend and get urls, then attach them to self.imageUrls
    }
}
