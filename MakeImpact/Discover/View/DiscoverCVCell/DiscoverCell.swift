//
//  DiscoverCell.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/2/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class DiscoverCell: UICollectionViewCell {
//MARK: Properties
    
//MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        //initialize properties here
        super.awakeFromNib()
        initializeXibFile()
        setupViews()
    }
    
    func setupViews() {
        imageView.image = kSAMPLEDISCOVERIMAGE
        imageView.contentMode = .scaleAspectFill
        titleLabel.text = "Forest"
        let gradient = CAGradientLayer()
        gradient.frame = imageView.bounds
        gradient.colors = [kWHITECGCOLOR, kBLACKCGCOLOR]
        imageView.layer.insertSublayer(gradient, at: 0)
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
