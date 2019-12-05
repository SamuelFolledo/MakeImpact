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
    var issue: Issue!
    
//MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        //initialize properties here
        super.awakeFromNib()
        initializeXibFile()
    }
    
    func populateViews(issue: Issue) {
        self.issue = issue
        imageView.image = issue.image
        imageView.contentMode = .scaleAspectFill
        titleLabel.text = issue.mainCategory
        let gradient = CAGradientLayer()
        gradient.frame = imageView.bounds
        gradient.colors = [kWHITECGCOLOR, kBLACKCGCOLOR]
//        gradientView.isHidden = true
        imageView.layer.insertSublayer(gradient, at: 100)
        self.layer.cornerRadius = 10
        self.clipsToBounds = true //to allow cornerRadius
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    
    func initializeXibFile() {
        let bundle = Bundle.init(for: DiscoverCell.self)
        if let viewsToAdd = bundle.loadNibNamed("DiscoverCell", owner: self, options: nil), let contentView = viewsToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight,
                                            .flexibleWidth]
        }
    }
}
