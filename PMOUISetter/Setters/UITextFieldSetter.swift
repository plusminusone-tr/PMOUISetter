//
//  UITextFieldSetter.swift
//  Planty
//
//  Created by Oğuzhan Karakuş on 20.09.2021.
//  Copyright © 2021 Planty. All rights reserved.
//

import UIKit

public extension UITextField {
    
    @discardableResult
    func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    func textColor(_ textColor: UIColor?) -> Self {
        self.textColor = textColor
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    func borderStyle(_ borderStyle: BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }
    
    @discardableResult
    func placeholder(_ placeholder: String?) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    func minimumFontSize(_ minimumFontSize: CGFloat) -> Self {
        self.minimumFontSize = minimumFontSize
        return self
    }
    
    @discardableResult
    func leftView(_ view: UIView?, viewMode: ViewMode) -> Self {
        self.leftView = view
        self.leftViewMode = viewMode
        return self
    }
    
    @discardableResult
    func rightView(_ view: UIView?, viewMode: ViewMode) -> Self {
        self.rightView = view
        self.rightViewMode = viewMode
        return self
    }
    
    @discardableResult
    func inputView(_ inputView: UIView?) -> Self {
        self.inputView = inputView
        return self
    }
    
    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        self.inputAccessoryView = inputAccessoryView
        return self
    }
    
}
