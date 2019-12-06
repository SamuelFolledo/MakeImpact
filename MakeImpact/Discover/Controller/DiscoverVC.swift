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
//        discoverCollectionView.register(DiscoverCell.self, forCellWithReuseIdentifier: "\(kDISCOVERCELLID)")
//        discoverCollectionView.register(DiscoverCell.self, forCellWithReuseIdentifier: kDISCOVERCELLID) //only needed if I am not using storyboard
        discoverCollectionView.delegate = self
        discoverCollectionView.dataSource = self
//        discoverCollectionView.register(UINib.init(nibName: "DiscoverCell", bundle: nil), forCellWithReuseIdentifier: "discoverCellId")
    }
    
    fileprivate func testPopulateIssues() {
        let issue1: Issue = Issue(id: "1", mainCategory: "Forest", secondCategory: "Earth", contact: "Samuel")
        let issue2: Issue = Issue(id: "2", mainCategory: "World Hunger", secondCategory: "Poverty", contact: "Raquel")
        let issue3: Issue = Issue(id: "3", mainCategory: "Recycle", secondCategory: "Earth", contact: "Samuel")
        let issue4: Issue = Issue(id: "4", mainCategory: "Politics", secondCategory: "Poverty", contact: "Raquel")
        let issue5: Issue = Issue(id: "5", mainCategory: "Women In Tech", secondCategory: "Earth", contact: "Samuel")
        let issue6: Issue = Issue(id: "6", mainCategory: "Innovative Technology", secondCategory: "Poverty", contact: "Raquel")
        issues = [issue1, issue2, issue3, issue4, issue5, issue6]
    }
    
//MARK: IBActions
    
//MARK: Helpers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case kSHOWDETAILID:
            print(kSHOWDETAILID)
            guard let indexPath = (sender as? UIView)?.findCollectionViewIndexPath() else { return }
            guard let detailVC: DiscoverDetailVC = segue.destination as? DiscoverDetailVC else { return }
            detailVC.issue = issues[indexPath.section]
        default:
            break
        }
    }
}

//MARK: Extensions
extension DiscoverVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) { //didSelect
        print(issues[indexPath.section])
        guard let cell: DiscoverCell = collectionView.cellForItem(at: indexPath) as? DiscoverCell else { return }
        performSegue(withIdentifier: kSHOWDETAILID, sender: cell)
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
        cell.issue = issues[indexPath.section]
//        cell.issueViewDelegate = self
//        cell.indexPath = indexPath
        return cell
    }
}

//IssueViewDelegate extension
extension DiscoverVC: IssueViewDelegate {
    func issueViewTapped(at index: IndexPath) {
        print(index.section)
    }
}
