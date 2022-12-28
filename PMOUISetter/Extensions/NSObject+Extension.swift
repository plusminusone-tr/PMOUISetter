//
//  NSObject+Extension.swift
//  PMOUISetter
//
//  Created by Oğuzhan Karakuş on 2.02.2022.
//

import Foundation

extension NSObject {
    var className: String {
        return type(of: self).className
    }

    static var className: String {
        return String(describing: self)
    }
}
