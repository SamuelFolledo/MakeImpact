//
//  DiscoverVC.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 11/20/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class DiscoverVC: UIViewController {
//MARK: Properties
    var issues: [Issue] = []
    private lazy var width: CGFloat = view.frame.size.width
    private lazy var height: CGFloat = view.frame.size.height
    
//MARK: IBOutlets
    @IBOutlet weak var discoverCollectionView: UICollectionView!
    
    //MARK: App Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
//MARK: Private Methods
    fileprivate func setupViews() {
        testPopulateIssues()
    }
    
    fileprivate func testPopulateIssues() {
        let issue1: Issue = Issue(issueID: "1", issueMainCategory: "Forest", issueSecondCategory: "Earth", issueContact: "Samuel")
        issues.append(issue1)
        let issue2: Issue = Issue(issueID: "2", issueMainCategory: "World Hunger", issueSecondCategory: "Poverty", issueContact: "Raquel")
        issues.append(issue2)
    }
    
//MARK: IBActions
    
//MARK: Helpers
    
}

//MARK: Extensions
extension DiscoverVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout { //setting up //flow layout to resize cell
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
        performSegue(withIdentifier: kSHOWDETAIL, sender: cell)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: width * 0.9, height: height / 4)
    }
}

//MARK: UICollectionViewDataSource
extension DiscoverVC: UICollectionViewDataSource { //for data
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { //horizontal
        return 1 //just one section
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int { //vertical
        return issues.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DiscoverCell = collectionView
            .dequeueReusableCell(withReuseIdentifier: kDISCOVERCELLID, for: indexPath) as! DiscoverCell
        cell.backgroundColor = .black
        cell.setupViews()
        return cell
    }
}
