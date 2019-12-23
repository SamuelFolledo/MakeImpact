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
            titleLabel.text = issue.mainCategory.text
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
        gradientView.isHidden = true
        let gradientLayer = CAGradientLayer()
        guard let black: CGColor = UIColor.black.cgColor.copy(alpha: 0.4) else { return }
        gradientLayer.colors = [UIColor.clear.cgColor, black]
        gradientLayer.locations = [0.6, 1.0] //0.75 instead of 0 so there will be more clear color than black
        gradientLayer.frame = imageView.frame
        imageView.layer.insertSublayer(gradientLayer, at: 2)
        self.layer.cornerRadius = 10
        self.clipsToBounds = true //to allow cornerRadius
    }
}
