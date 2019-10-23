//
//  TextCell.swift
//  TestProg
//
//  Created by Oleg Mytsovda on 23.10.2019.
//  Copyright © 2019 Oleg Mytsovda. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell {

    let cellTextLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(cellTextLabel)
        cellTextLabel.translatesAutoresizingMaskIntoConstraints = false
        cellTextLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        cellTextLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        cellTextLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        cellTextLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        cellTextLabel.textAlignment = .center
        cellTextLabel.text = "UIColor.red"
        cellTextLabel.textColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
