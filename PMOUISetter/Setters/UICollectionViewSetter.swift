//
//  UICollectionViewSetter.swift
//  Planty
//
//  Created by Oğuzhan Karakuş on 20.09.2021.
//  Copyright © 2021 Planty. All rights reserved.
//

import UIKit

public extension UICollectionView {
    
    @discardableResult
    func layout(_ layout: UICollectionViewLayout) -> Self {
        self.collectionViewLayout = layout
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UICollectionViewDataSource) -> Self {
        self.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func registerWithNib(_ cells: UICollectionViewCell.Type...) -> Self {
        for cell in cells {
            self.register(cell.getNib(), forCellWithReuseIdentifier: cell.identifier)
        }
        return self
    }
    
    @discardableResult
    func registerWithNib(_ views: UICollectionReusableView.Type..., forSupplementaryViewOfKind: String) -> Self {
        for view in views {
            register(view.getNib(), forSupplementaryViewOfKind: forSupplementaryViewOfKind, withReuseIdentifier: view.identifier)
        }
        return self
    }
    
    @discardableResult
    func scrollDirection(_ scrollDirection: ScrollDirection) -> Self {
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
        }
        return self
    }
    
    @discardableResult
    func estimatedItemSize(_ estimatedItemSize: CGSize) -> Self {
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.estimatedItemSize = estimatedItemSize
        }
        return self
    }
    
    @discardableResult
    func allowsSelection(_ allowsSelection: Bool) -> Self {
        self.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> Self {
        self.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    func setVerticalScrollIndicatorVisible(_ showsVerticalScrollIndicator: Bool) -> Self {
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    func setsHorizontalScrollIndicatorVisible(_ showsHorizontalScrollIndicator: Bool) -> Self {
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
}
