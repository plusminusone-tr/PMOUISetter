//
//  UIImageViewSetter.swift
//  Planty
//
//  Created by Oğuzhan Karakuş on 10.09.2021.
//  Copyright © 2021 Planty. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    @discardableResult
    func image(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
}
