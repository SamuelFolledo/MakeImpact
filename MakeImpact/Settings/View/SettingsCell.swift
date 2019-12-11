//
//  SettingsCell.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/11/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
    var setting: SettingData! {
        didSet {
            populateCell()
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func populateCell() {
        titleLabel.text = setting.title
        cellImageView.image = setting.image
    }
    
}
