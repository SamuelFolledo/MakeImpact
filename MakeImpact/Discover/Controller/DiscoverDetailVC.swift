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
    private lazy var width: CGFloat = view.frame.size.width
    private lazy var height: CGFloat = view.frame.size.height

//MARK: IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
//MARK: App Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
//MARK: Private Methods
    fileprivate func setupViews() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib.init(nibName: "NewsCell", bundle: nil), forCellWithReuseIdentifier: kDISCOVERNEWSCELLID)
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        flowLayout.itemSize = CGSize(width: 98, height: 134)
        flowLayout.itemSize = UICollectionViewFlowLayout.automaticSize //automatic height size
//        flowLayout.estimatedItemSize = CGSize(width: width * 0.9, height: height / 4)
        flowLayout.sectionInset = UIEdgeInsets(top: 0,left: 5,bottom: 0,right: 5)
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumInteritemSpacing = 0.0
        collectionView.collectionViewLayout = flowLayout //this is needed so the image size will not control the size of the cell
    }
    
//MARK: IBActions
    
//MARK: Helpers
    
}

//MARK: Extensions
//MARK: UICollectionViewDataSource
extension DiscoverDetailVC: UICollectionViewDataSource { //for data
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { //horizontal
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int { //vertical count
        return 11
//        return issues.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { //cellForItemAt
        switch indexPath.section {
        case 0:
            let cell: NewsCell = collectionView
            .dequeueReusableCell(withReuseIdentifier: kDISCOVERNEWSCELLID, for: indexPath) as! NewsCell
            cell.issue = issue
            //        cell.backgroundColor = .red
            return cell
        default:
            let cell: NewsCell = collectionView
            .dequeueReusableCell(withReuseIdentifier: kDISCOVERNEWSCELLID, for: indexPath) as! NewsCell
            cell.issue = issue
            //        cell.backgroundColor = .red
            return cell
        }
    }
}

//MARK: Extensions
extension DiscoverDetailVC: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) { //didSelect
//        performSegue(withIdentifier: kSHOWDETAILID, sender: issues[indexPath.section])
//    }
}

extension DiscoverDetailVC: UICollectionViewDelegateFlowLayout { //sizing
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize { //size
        switch indexPath.section {
        case 0:
            return CGSize(width: width * 1, height: height / 2.5)
        default:
            return CGSize(width: width * 0.95, height: height / 4)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets { //spacing
        switch section {
        case 0:
            return UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
        default:
            return UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        }
    }
}

