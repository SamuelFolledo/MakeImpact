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
//        testPopulateIssues()
        populateCategoryCells()
        setupCollectionView()
    }
    
    fileprivate func setupCollectionView() {
        discoverCollectionView.delegate = self
        discoverCollectionView.dataSource = self
        discoverCollectionView.register(UINib.init(nibName: "DiscoverCell", bundle: nil), forCellWithReuseIdentifier: kDISCOVERCELLID)
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: 98, height: 134)
        flowLayout.sectionInset = UIEdgeInsets(top: 0,left: 5,bottom: 0,right: 5)
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumInteritemSpacing = 0.0
        discoverCollectionView.collectionViewLayout = flowLayout //this is needed so the image size will not control the size of the cell
    }
    
    fileprivate func populateCategoryCells() {
//        for
    }
    
//    fileprivate func testPopulateIssues() {
//        let issue1: Issue = Issue(id: "1", mainCategory: "Forest", categories: "Earth", contact: "Samuel")
//        let issue2: Issue = Issue(id: "2", mainCategory: "World Hunger", categories: "Poverty", contact: "Raquel")
//        let issue3: Issue = Issue(id: "3", mainCategory: "Recycle", categories: "Earth", contact: "Samuel")
//        let issue4: Issue = Issue(id: "4", mainCategory: "Politics", categories: "Poverty", contact: "Raquel")
//        let issue5: Issue = Issue(id: "5", mainCategory: "Women In Tech", categories: "Earth", contact: "Samuel")
//        let issue6: Issue = Issue(id: "6", mainCategory: "Innovative Technology", categories: "Poverty", contact: "Raquel")
//        issues = [issue1, issue2, issue3, issue4, issue5, issue6]
//    }
    
//MARK: IBActions
    
//MARK: Helpers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case kSHOWDETAILID:
            guard let category = sender as? Category else { return }
            guard let detailVC: DiscoverDetailVC = segue.destination as? DiscoverDetailVC else { return }
//            detailVC.issues = issues
//            detailVC.issue = issue
            detailVC.category = category
        default:
            break
        }
    }
}

//MARK: UICollectionViewDataSource
extension DiscoverVC: UICollectionViewDataSource { //for data
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { //horizontal
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int { //vertical count
        return Category.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { //cellForItemAt
        let cell: DiscoverCell = collectionView
            .dequeueReusableCell(withReuseIdentifier: kDISCOVERCELLID, for: indexPath) as! DiscoverCell
//        cell.issue = issues[indexPath.section]
        cell.category = Category.allCases[indexPath.section]
        return cell
    }
}

//MARK: Extensions
extension DiscoverVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) { //didSelect
        performSegue(withIdentifier: kSHOWDETAILID, sender: Category.allCases[indexPath.section])
    }
}

extension DiscoverVC: UICollectionViewDelegateFlowLayout { //sizing
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize { //size
        return CGSize(width: width * 0.9, height: height / 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets { //spacing
        return UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
    }
}
