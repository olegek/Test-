//
//  ViewControllerModel.swift
//  TestProg
//
//  Created by Oleg Mytsovda on 23.10.2019.
//  Copyright © 2019 Oleg Mytsovda. All rights reserved.
//

import UIKit
import Foundation

protocol ViewModelDelegate:AnyObject {
    func reloadData()
    func showMessage(message:String)
}

class ViewControllerModel {
    
    private weak var delegate:ViewModelDelegate?
    
    private var numberOfItems = 10
    
    init(delegate: UIViewController) {
        self.delegate = delegate as? ViewModelDelegate
    }
    
    func getTitle() -> String {
        return "Test"
    }
    
    func getNumberOfItems() -> Int {
        return numberOfItems
    }
    
    @objc func addElements() {
        self.numberOfItems += 10
        delegate?.reloadData()
    }
    
    @objc func removeElements() {
        self.numberOfItems -= 10
        if self.numberOfItems < 0 {
            delegate?.showMessage(message: "Sorry you haven't elements")
        } else {
            delegate?.reloadData()
        }
    }
    
}

