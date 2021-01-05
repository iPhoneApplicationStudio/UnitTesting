//
//  HomeViewModel.swift
//  UnitTestIntroduction
//
//  Created by BigStep on 05/01/21.
//

import Foundation

protocol HomeViewModelProtocol {
    func getMackbookType() -> MacbookType?
    func getMacbookName() -> String?
    func getMacbookSpeed() -> String?
}

class HomeViewModel:HomeViewModelProtocol
{
    private var mackbook:Mackbook?
    
    init(){
        self.mackbook = nil
    }
    convenience init(mackbook:Mackbook?) {
        self.init()
        self.mackbook = mackbook
    }
    //Required Methods
    func getMackbookType() -> MacbookType? {
        return mackbook?.type
    }
    func getMacbookName() -> String? {
        return mackbook?.name
    }
    func getMacbookSpeed() -> String? {
        guard let mackbook = mackbook else {
            return nil
        }
        return mackbook.type == .Air ? "Good" : "Best"
    }
    
}
