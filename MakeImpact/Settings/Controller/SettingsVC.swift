//
//  SettingsVC.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 11/20/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
//MARK: Properties
    var datas: [String: UIImage]!
//MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
//MARK: App Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
//MARK: Private Methods
    fileprivate func setupViews() {
        createCellData()
        view.backgroundColor = .blue
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    fileprivate func createCellData() {
        datas = [
            "Profile": kBLANKIMAGE,
            "Update Photo": kBLANKIMAGE,
            "Account Settings": kBLANKIMAGE,
            "My Activities": kBLANKIMAGE,
            "Tax Info": kBLANKIMAGE,
            "Settings": kBLANKIMAGE,
            "Credits": kBLANKIMAGE,
            "Logout": kBLANKIMAGE
        ]
    }
    
//MARK: IBActions
    
//MARK: Helpers
    
}

//MARK: Extensions
extension SettingsVC: UITableViewDelegate {
    
}

extension SettingsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kSETTINGSCELLID, for: indexPath)
        cell.song = datas[indexPath.row]
        cell.populateCell()
        return cell
    }
    
    
}
