//
//  Enums.swift
//  TestProg
//
//  Created by Oleg Mytsovda on 23.10.2019.
//  Copyright © 2019 Oleg Mytsovda. All rights reserved.
//

import UIKit
import Foundation

enum ConstraintEnum {
    case top(_ topElement:NSLayoutYAxisAnchor, _ constant:CGFloat = 0)
    case left(_ leftElement:NSLayoutXAxisAnchor, _ constant:CGFloat = 0)
    case right(_ rightElement:NSLayoutXAxisAnchor, _ constant:CGFloat = 0)
    case bottom(_ bottomElement:NSLayoutYAxisAnchor, _ constant:CGFloat = 0)
    case width(_ constant:CGFloat = 0)
    case height(_ constant:CGFloat = 0)
    case nope
} 
