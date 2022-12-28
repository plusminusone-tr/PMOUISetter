//
//  UIView+Extension.swift
//  PMOUISetter
//
//  Created by Oğuzhan Karakuş on 2.02.2022.
//

import UIKit

extension UIView {
    
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
}
