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
    
//MARK: IBOutlets
    @IBOutlet weak var discoverCollectionView: UICollectionView!
    
    //MARK: App Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
//MARK: Private Methods
    fileprivate func setupViews() {
        view.backgroundColor = .green
    }
    
//MARK: IBActions
    
//MARK: Helpers
    
}

//MARK: Extensions
extension DiscoverVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { //horizontal
        return 1 //just one section
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int { //vertical
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DiscoverCell = collectionView
          .dequeueReusableCell(withReuseIdentifier: kDISCOVERCELLID, for: indexPath) as! DiscoverCell
        cell.backgroundColor = .black
        cell.setupViews()
        return cell
    }
}
