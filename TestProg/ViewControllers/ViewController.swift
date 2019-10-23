//
//  ViewController.swift
//  TestProg
//
//  Created by Oleg Mytsovda on 23.10.2019.
//  Copyright © 2019 Oleg Mytsovda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView()
    
    var model:ViewControllerModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.model = ViewControllerModel(delegate:self)
        self.setupUI()
    }

}

extension ViewController:ViewModelDelegate {
    
    func reloadData() {
        self.tableView.reloadData()
    }
    
    func showMessage(message:String) {
        let alert = UIAlertController(title: "Message", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    
}

