//
//  UITableView+Extension.swift
//  PMOUISetter
//
//  Created by Oğuzhan Karakuş on 2.02.2022.
//

import UIKit

extension UITableViewCell {
    class func getNib() -> UINib {
        return UINib(nibName: self.className, bundle: nil)
    }
    
    class var identifier: String {
        return self.className
    }
}
