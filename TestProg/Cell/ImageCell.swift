//
//  BaseCell.swift
//  TestProg
//
//  Created by Oleg Mytsovda on 23.10.2019.
//  Copyright © 2019 Oleg Mytsovda. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    let cellImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(cellImageView)
        cellImageView.translatesAutoresizingMaskIntoConstraints = false
        cellImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        cellImageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        cellImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        cellImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        cellImageView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
