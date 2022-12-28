//
//  UIStackViewSetter.swift
//  Planty
//
//  Created by Oğuzhan Karakuş on 20.09.2021.
//  Copyright © 2021 Planty. All rights reserved.
//

import UIKit

public extension UIStackView {
    
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    @discardableResult
    func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    @discardableResult
    func alignment(_ alignment: Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult
    func distribution(_ distribution: Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
}
