//
//  DiscoverCell.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/2/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

//@IBDesignable //allow us to use this view in designing storyboard
//@IBInspectable var cornerRadius: CGFloat = 0.0
class DiscoverCell: UICollectionViewCell {
//MARK: Properties
    var indexPath: IndexPath!
    var issue: Issue! {
        didSet {
            imageView.image = issue.image
            titleLabel.text = issue.mainCategory
            populateViews()
        }
    }
    
//MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func populateViews() {
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        let gradient = CAGradientLayer()
        gradient.frame = imageView.bounds
        gradient.colors = [kWHITECGCOLOR, kBLACKCGCOLOR]
        imageView.layer.insertSublayer(gradient, at: 1)
        self.layer.cornerRadius = 10
        self.clipsToBounds = true //to allow cornerRadius
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        imageView.frame = bounds
//    }
}
