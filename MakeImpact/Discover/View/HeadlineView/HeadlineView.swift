//
//  HeadlineView.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/4/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class HeadlineView: UIView {
//MARK: Properties
    var issue: Issue! {
        didSet {
            setupView()
        }
    }
    
//MARK: IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var headlineImageView: UIImageView!
    
    override init(frame: CGRect) { //for programmatically
        super.init(frame: frame)
        initializeXibFile()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializeXibFile()
    }
    
    func setupView() {
        headlineImageView.image = issue.image
        titleLabel.text = issue.mainCategory
        descriptionLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
    }

    func initializeXibFile() {
        let bundle = Bundle.init(for: HeadlineView.self)
        if let viewsToAdd = bundle.loadNibNamed("HeadlineView", owner: self, options: nil), let contentView = viewsToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight,
                                            .flexibleWidth]
        }
    }
}
