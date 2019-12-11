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
    var settings: [SettingData]!
    
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
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SettingsCell", bundle: nil), forCellReuseIdentifier: kSETTINGSCELLID)
        
    }
    
    fileprivate func createCellData() {
        settings = [
            SettingData(title: "Profile", image: kBLANKIMAGE),
            SettingData(title: "Update Photo", image: kBLANKIMAGE),
            SettingData(title: "Account Settings", image: kBLANKIMAGE),
            SettingData(title: "My Activities", image: kBLANKIMAGE),
            SettingData(title: "Tax Info", image: kBLANKIMAGE),
            SettingData(title: "Settings", image: kBLANKIMAGE),
            SettingData(title: "Credits", image: kBLANKIMAGE),
            SettingData(title: "Logout", image: kBLANKIMAGE)
            
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
        settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SettingsCell = tableView.dequeueReusableCell(withIdentifier: kSETTINGSCELLID, for: indexPath) as! SettingsCell
        cell.setting = settings[indexPath.row]
        return cell
    }
    
    
}
