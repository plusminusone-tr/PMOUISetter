//
//  BaseUISetterProtocol.swift
//  Planty
//
//  Created by Oğuzhan Karakuş on 10.09.2021.
//  Copyright © 2021 Planty. All rights reserved.
//

import UIKit

public protocol BaseUISetterProtocol: Shadow {}

public protocol Shadow: AnyObject {}

public extension Shadow where Self: UIView {
    @discardableResult
    func applySketchShadow(color: UIColor = .black,
                           alpha: Float = 0.5,
                           x: CGFloat = 0,
                           y: CGFloat = 2,
                           blur: CGFloat = 4,
                           spread: CGFloat = 0) -> Self {
        layer.applySketchShadow(color: color,
                                alpha: alpha,
                                x: x,
                                y: y,
                                blur: blur,
                                spread: spread)
        return self
    }
}

public extension BaseUISetterProtocol where Self: UIView {
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor? = .blue) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        self.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    func alpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    @discardableResult
    func isHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }
    
    @discardableResult
    func isAccessibilityElement(_ isAccessibilityElement: Bool) -> Self {
        self.isAccessibilityElement = isAccessibilityElement
        return self
    }
    
    @discardableResult
    func accessibilityIdentifier(_ accessibilityIdentifier: String?) -> Self {
        self.accessibilityIdentifier = accessibilityIdentifier
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func contentMode(_ mode: UIView.ContentMode) -> Self {
        self.contentMode = mode
        return self
    }
    
}
