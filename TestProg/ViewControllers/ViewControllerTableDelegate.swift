//
//  ViewControllerTableDelegate.swift
//  TestProg
//
//  Created by Oleg Mytsovda on 23.10.2019.
//  Copyright © 2019 Oleg Mytsovda. All rights reserved.
//

import UIKit

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model?.getNumberOfItems() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String.init(describing: TextCell.self), for: indexPath) as! TextCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: String.init(describing: ImageCell.self), for: indexPath) as! ImageCell
            return cell
        }
    }
    
}

