//
//  ViewControllerUI.swift
//  TestProg
//
//  Created by Oleg Mytsovda on 23.10.2019.
//  Copyright © 2019 Oleg Mytsovda. All rights reserved.
//

import UIKit

extension ViewController {
    
    func setupUI() {
        self.view.addSubview(tableView)
        self.title = model?.getTitle()
        
        self.addBarButtons()
        
        tableView.setup(with: .singleLine, delegate: self, dataSource: self, registerCells: [(TextCell.self, String.init(describing: TextCell.self)), (ImageCell.self, String.init(describing: ImageCell.self))])
        tableView.setupConstraint(constraints: [.top(self.view.topAnchor), .left(self.view.leftAnchor), .right(self.view.rightAnchor), .bottom(self.view.bottomAnchor)])
    }
    
    func addBarButtons() {
        let leftBarItem = UIBarButtonItem.init(title: "Add", style: .plain, target: model, action: #selector(model?.addElements))
        let rightBarItem = UIBarButtonItem.init(title: "Remove", style: .plain, target: model, action: #selector(model?.removeElements))
        self.navigationItem.leftBarButtonItem = leftBarItem
        self.navigationItem.rightBarButtonItem = rightBarItem
    }
    
}
