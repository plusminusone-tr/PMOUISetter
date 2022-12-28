//
//  UIViewSetter.swift
//  Planty
//
//  Created by Oğuzhan Karakuş on 10.09.2021.
//  Copyright © 2021 Planty. All rights reserved.
//

import UIKit

extension UIView: BaseUISetterProtocol {
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        self.layer.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    public func borderColor(_ borderColor: CGColor) -> Self {
        self.layer.borderColor = borderColor
        return self
    }
    
    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        self.layer.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    public func isOpaque(_ isOpaque: Bool) -> Self {
        self.isOpaque = isOpaque
        return self
    }
    
}
