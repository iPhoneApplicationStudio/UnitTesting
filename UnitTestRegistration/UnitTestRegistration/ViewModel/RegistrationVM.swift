//
//  ReistrationVM.swift
//  UnitTestRegistration
//
//  Created by Kumar on 03/10/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import Foundation

class RegistrationVM{
    
    func isValidFirstName(name:String?) -> Bool{
        guard let name = name, !name.isEmpty, name.count > AppConstant.Registration.firstNameMinChars else {return false}
        if let fisrtChar = name.first{
            let str = String(fisrtChar)
            let characterset = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
            if str.rangeOfCharacter(from: characterset.inverted) != nil {
                return false
            }
        }
        return true
    }
}
