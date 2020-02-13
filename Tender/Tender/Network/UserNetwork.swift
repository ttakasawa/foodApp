//
//  UserNetwork.swift
//  Tender
//
//  Created by Tomoki Takasawa on 2/12/20.
//  Copyright © 2020 Tender. All rights reserved.
//

import Foundation

protocol UserNetwork {
    var user: User? { get set }
    var firUserId: String? { get set }
    
    func createUser(email: String, password: String, firstName: String, lastName: String, completion: @escaping (_ user: User?) -> Void)
    func login(email: String, password: String, completion: @escaping (_ user: User?, _ error: Error?) -> Void)
    func signInAnonymously(completion: @escaping (_ user: User?) -> Void)
    func logout()
    func updateUser(user: User, completion: @escaping (_ error: Error?) -> Void)
    func queryUser(userId: String, completion: @escaping (_ user: User?, _ error: Error?) -> Void)
    
}
