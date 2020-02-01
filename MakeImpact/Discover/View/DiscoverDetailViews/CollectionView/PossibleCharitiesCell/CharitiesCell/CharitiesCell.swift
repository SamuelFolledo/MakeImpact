//
//  CharitiesCell.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/14/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class CharitiesCell: UICollectionViewCell {
    var charity: Charity! {
        didSet {
            imageView.image = charity.image
            titleLabel.text = charity.title
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
