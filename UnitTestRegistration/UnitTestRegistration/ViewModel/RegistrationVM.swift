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
    func isValidEmail(email:String?) -> Bool{
        guard let email = email, !email.isEmpty, email.isValidEmail() else{return false}
        return true
    }
    func isValidPassword(password:String?) -> Bool{
        guard let password = password, !password.isEmpty, password.count >= AppConstant.Registration.passwordMinChars, password.isValidPassword() else {return false}
        return true
    }
    func isValidConfirmPassword(password:String?) -> Bool{
        guard let password = password, !password.isEmpty, password.count >= AppConstant.Registration.passwordMinChars else {return false}
        return true
    }
    func isPasswordMatchWithConfirmPassword(password:String?, confirmPassword:String?) -> Bool{
        guard let password = password, let confirmPassword = confirmPassword else {return false}
        return password == confirmPassword
    }
}
