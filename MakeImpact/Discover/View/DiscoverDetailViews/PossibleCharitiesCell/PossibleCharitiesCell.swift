//
//  PossibleCharitiesCell.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/9/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class PossibleCharitiesCell: UICollectionViewCell {
    var charities: [Charity]! {
        didSet {
            setupCollectionView()
        }
    }

    @IBOutlet weak var charitiesCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    fileprivate func setupCollectionView() {
        cell.charitiesCollectionView.register(UINib(nibName: "CharitiesCell", bundle: nil), forCellWithReuseIdentifier: kDISCOVERCHARITIESCELLID)
        charitiesCollectionView.backgroundColor = .red
    }

}
