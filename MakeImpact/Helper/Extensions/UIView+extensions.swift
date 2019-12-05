//
//  UIView+extensions.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/5/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

extension UIView {

    func findCollectionView() -> UICollectionView? {
        if let collectionView = self as? UICollectionView {
            return collectionView
        } else {
            return superview?.findCollectionView()
        }
    }

    func findCollectionViewCell() -> UICollectionViewCell? {
        if let cell = self as? UICollectionViewCell {
            return cell
        } else {
            return superview?.findCollectionViewCell()
        }
    }

    func findCollectionViewIndexPath() -> IndexPath? {
        guard let cell = findCollectionViewCell(), let collectionView = cell.findCollectionView() else { return nil }

        return collectionView.indexPath(for: cell)
    }

}
