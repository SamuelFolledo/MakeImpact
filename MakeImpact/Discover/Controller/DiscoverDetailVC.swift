//
//  DiscoverDetailVC.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/4/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class DiscoverDetailVC: UIViewController {
//MARK: Properties
    var issue: Issue!
//MARK: IBOutlets
    @IBOutlet weak var headlineView: HeadlineView!
    @IBOutlet weak var impactButton: UIButton!
    @IBOutlet weak var textView: UITextView!
   
//MARK: App Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
//MARK: Private Methods
    fileprivate func setupViews() {
        headlineView.issue = issue
        textView.isEditable = false
        impactButton.isImpactButton()
        navigationController?.navigationItem.title = issue.mainCategory
        
        textView.backgroundColor = .white
        textView.text = "Content:\n\nCertainty:\n\nSocial Proof:\n\nValue\n\nUrgency\n\n"
    }
    
//MARK: IBActions
    
//MARK: Helpers
    
}

//MARK: Extensions

