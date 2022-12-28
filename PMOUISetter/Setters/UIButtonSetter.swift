//
//  UIButtonSetter.swift
//  Planty
//
//  Created by Oğuzhan Karakuş on 10.09.2021.
//  Copyright © 2021 Planty. All rights reserved.
//

import UIKit

public extension UIButton {
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleFont(_ titleFont: UIFont?) -> Self {
        self.titleLabel?.font = titleFont
        return self
    }
    
    @discardableResult
    func titleColor(_ titleColor: UIColor, for state: UIControl.State = .normal) -> Self {
        self.setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    func titleShadowColor(_ titleShadowColor: UIColor?, for state: UIControl.State = .normal) -> Self {
        self.setTitleShadowColor(titleShadowColor, for: state)
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func backgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.setBackgroundImage(backgroundImage, for: state)
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor, for state: UIControl.State = .normal) -> Self {
        self.setBackgroundImage(backgroundColor.image(), for: state)
        return self
    }
    
    @discardableResult
    func addAction(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        self.addTarget(target, action: action, for: controlEvents)
        return self
    }
    
    @discardableResult
    func contentEdgeInsets(_ contentEdgeInsets: UIEdgeInsets) -> Self {
        self.contentEdgeInsets = contentEdgeInsets
        return self
    }
    
    @discardableResult
    func titleEdgeInsets(_ titleEdgeInsets: UIEdgeInsets) -> Self {
        self.titleEdgeInsets = titleEdgeInsets
        return self
    }
    
    @discardableResult
    func imageEdgeInsets(_ imageEdgeInsets: UIEdgeInsets) -> Self {
        self.imageEdgeInsets = imageEdgeInsets
        return self
    }
    
    @discardableResult
    func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> Self {
        self.contentHorizontalAlignment = contentHorizontalAlignment
        return self
    }
    
    func bounceAnimation(_ duration: TimeInterval = 0.1, _ completion: (() -> Void)? = nil) {
        DispatchQueue.main.async {
            UIView.animate(withDuration: duration) {
                self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            } completion: { _ in
                UIView.animate(withDuration: duration) {
                    self.transform = CGAffineTransform.identity
                } completion: { _ in
                    completion?()
                }
            }
        }
    }
    
}
