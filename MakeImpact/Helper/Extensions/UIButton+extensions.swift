//
//  UIButton+extensions.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/7/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

extension UIButton {
    func isImpactButton() {
        self.layer.borderWidth = 2
        self.layer.borderColor = kMAINCGCOLOR
        self.backgroundColor = kMAINCOLOR.withAlphaComponent(0.6)
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = self.frame.height / 5
        self.clipsToBounds = true
    }
}
