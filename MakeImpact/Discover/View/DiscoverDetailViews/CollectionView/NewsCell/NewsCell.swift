//
//  NewsCell.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/8/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class NewsCell: UICollectionViewCell {
//MARK: Properties
//    var issue: Issue! {
//        didSet {
//            setupView()
//        }
//    }
    var category: Category! {
        didSet {
            setupView()
        }
    }
    
//MARK: IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupView() {
        imageView.image = category.image
        titleLabel.text = category.text
        descriptionLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes { //this is to have a dynamic height on cell
        setNeedsLayout()
        layoutIfNeeded()
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        return layoutAttributes
    }
}
