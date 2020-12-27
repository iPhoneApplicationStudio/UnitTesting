//
//  RegistrationProtocol.swift
//  UnitTestRegistration
//
//  Copyright © 2020 Kumar. All rights reserved.
//

import Foundation

protocol RegistrationProtocol:AnyObject {
    func isValidFirstName(name:String?) -> Bool
    func isValidEmail(email:String?) -> Bool
}
