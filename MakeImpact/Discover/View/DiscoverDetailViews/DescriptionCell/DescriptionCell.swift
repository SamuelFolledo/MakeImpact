//
//  DescriptionCell.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/8/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class DescriptionCell: UICollectionViewCell {
    var issue: Issue! {
        didSet {
            setupCell()
        }
    }
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        quoteLabel.text = "\"We have moral obligation to take care of our future descendants\"" // need \" to escape ""
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
