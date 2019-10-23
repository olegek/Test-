//
//  TableView+UI.swift
//  TestProg
//
//  Created by Oleg Mytsovda on 23.10.2019.
//  Copyright © 2019 Oleg Mytsovda. All rights reserved.
//

import UIKit

typealias TableView = UITableView
typealias TableViewCell = UITableViewCell

extension UITableView {

    func setup(with separatorStyle:UITableViewCell.SeparatorStyle? = nil, separatorColor:UIColor? = nil, backgroundColor:UIColor? = nil, delegate:UITableViewDelegate? = nil, dataSource:UITableViewDataSource? = nil, registerCells:[(cellClass:UITableViewCell.Type, identifier:String)] = []) {
        self.setSeparatorStyle(style: separatorStyle)
        self.setSeparatorColor(color: separatorColor)
        self.setBackgroudColor(color: backgroundColor)
        self.setDelegate(delegate: delegate)
        self.setDataSource(dataSource: dataSource)
        self.cellRegistration(registerCells: registerCells)
    }
    
    func setDelegate(delegate: UITableViewDelegate?) {
        self.delegate = delegate
    }
    
    func setDataSource(dataSource: UITableViewDataSource?) {
        self.dataSource = dataSource
    }
    
    func cellRegistration(registerCells:[(cellClass:UITableViewCell.Type, identifier:String)]) {
        for cell in registerCells {
            self.register(cell.cellClass, forCellReuseIdentifier: cell.identifier)
        }
    }
        
    func setSeparatorStyle(style: UITableViewCell.SeparatorStyle?) {
        guard let existStyle = style else {
            return
        }
        separatorStyle = existStyle
    }
    
    func setSeparatorColor(color: UIColor?) {
        guard let existColor = color else {
            return
        }
        
        separatorColor = existColor
    }
    
    func setBackgroudColor(color:UIColor?) {
        guard let existColor = color else {
            return
        }
        backgroundColor = existColor
    }
    
    // MARK: - Constraints
    
    func setupConstraint(constraints:[ConstraintEnum]) {
        translatesAutoresizingMaskIntoConstraints = false
        for cons in constraints {
            self.addConstraint(constraint: cons)
        }
    }
    
    func addConstraint(constraint:ConstraintEnum) {
        switch constraint {
            
        case .top(let element, let constant):
            topAnchor.constraint(equalTo: element, constant: constant).isActive = true
            
        case .left(let element,  let constant):
            leftAnchor.constraint(equalTo: element, constant: constant).isActive = true
            
        case .right(let element,  let constant):
            rightAnchor.constraint(equalTo: element, constant: constant).isActive = true
            
        case .bottom(let element,  let constant):
            bottomAnchor.constraint(equalTo: element, constant: constant).isActive = true
            
        case .width(let constant):
            widthAnchor.constraint(equalToConstant: constant).isActive = true
            
        case .height(let constant):
            heightAnchor.constraint(equalToConstant: constant).isActive = true
            
        default:
            print("element not exist, please update enum")
            break
        }
    }
    
}
