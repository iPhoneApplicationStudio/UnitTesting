//
//  RegistrationVMTests.swift
//  UnitTestRegistrationTests
//
//  Created by Kumar on 03/10/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import XCTest
@testable import UnitTestRegistration

class RegistrationVMTests: XCTestCase
{
    private var sut:RegistrationVM!

    override func setUpWithError() throws {
        sut = RegistrationVM()
    }
    override func tearDownWithError() throws {
        sut = nil
    }
    //First Name
    func testFirstNameValidation_nameShouldNotEmpty(){
        //Act
        let isValid = sut.isValidFirstName(name:"")
        //Assert
        XCTAssertFalse(isValid, "First name should not empty.")
    }
    func testFirstNameValidation_minCharsShouldBeThere(){
        //Act
        let isValid = sut.isValidFirstName(name:"a")
        //Assert
        XCTAssertFalse(isValid, "First name should be max or equal to \(AppConstant.Registration.firstNameMinChars)")
    }
    func testFirstNameValidation_shouldNotStartWithNumberOrSpecialChar(){
        //Act
        let isValid = sut.isValidFirstName(name:"1Abhinay")
        //Assert
        XCTAssertFalse(isValid, "First name should not start with number or special char.")
    }
    //Email
    func testEmailValidation_emailShouldNotEmpty(){
        //Act
        let isValid = sut.isValidEmail(email:"")
        //Assert
        XCTAssertFalse(isValid, "Email should not empty.")
    }
    func testEmailValidation_emailShouldPassOwnValidation(){
        //Act
        let isValid = sut.isValidEmail(email:"abhi@gmail")
        //Assert
        XCTAssertFalse(isValid, "Email is not valid.")
    }
    //Password
    func testPasswordValidation_passwordShouldNotEmpty(){
        //Act
        let isValid = sut.isValidPassword(password:"")
        //Assert
        XCTAssertFalse(isValid, "Password should not empty.")
    }
    func testPasswordValidation_minCharsShouldBeThere(){
        //Act
        let isValid = sut.isValidPassword(password:"Abhinay@2")//
        //Assert
        XCTAssertTrue(isValid, "Password should be max or equal to \(AppConstant.Registration.passwordMinChars)")
    }
    func testPasswordValidation_passwordShouldPassPasswordSpecificValidation(){
        //Act
        let isValid = sut.isValidPassword(password: "Abhi@132")
        //Assert
        XCTAssertTrue(isValid, "Password is not valid.")
    }
    //Password
    func testConfirmPasswordValidation_confirmPasswordShouldNotEmpty(){
        //Act
        let isValid = sut.isValidConfirmPassword(password:"")
        //Assert
        XCTAssertFalse(isValid, "Confirm Password should not empty.")
    }
    func testConfirmPasswordValidation_confirmMinCharsShouldBeThere(){
        //Act
        let isValid = sut.isValidConfirmPassword(password:"Abhinay@2")//
        //Assert
        XCTAssertTrue(isValid, "Confirm Password should be max or equal to \(AppConstant.Registration.passwordMinChars)")
    }
    func testConfirmPasswordValidation_isMatchWithPassword_shouldRetrunFalse(){
        //Act
        let isValid = sut.isPasswordMatchWithConfirmPassword(password: "11111111", confirmPassword: "11111112")
        //Assert
        XCTAssertFalse(isValid, "isPasswordMatchWithConfirmPassword should return false")
    }
    
    func testConfirmPasswordValidation_isMatchWithPassword_shouldRetrunTrue(){
        //Act
        let isValid = sut.isPasswordMatchWithConfirmPassword(password: "11111111", confirmPassword: "11111111")
        //Assert
        XCTAssertTrue(isValid, "isPasswordMatchWithConfirmPassword should return true")
    }
}
