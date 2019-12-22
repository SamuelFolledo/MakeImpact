//
//  Issue.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/2/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class Issue {
    let id: String!
    let mainCategory: Category!
    var categories: [Category]!
    var contact: String = ""
    let image: UIImage!
    
    init(id: String, mainCategory: Category, categories: [Category] = [], contact: String, image: UIImage = kSAMPLEDISCOVERIMAGE) {
        self.id = id
        self.mainCategory = mainCategory
        self.categories = categories
        self.contact = contact
        self.image = image
    }
    
    init(dictionary: [String: Any]) {
        self.id = dictionary[kISSUEID] as? String
        self.mainCategory = dictionary[kISSUEMAINCATEGORY] as? Category
        self.categories = dictionary[kISSUECATEGORIES] as? [Category]
        self.contact = (dictionary[kISSUECONTACT] as? String)!
        self.image =  UIImage(data: dictionary[kISSUEIMAGE] as! Data)
    }
    
//    class func currentIssue() -> Issue? { //checks UserDefaults for current issueI, else return nil
//        if let dictionary = UserDefaults.standard.object(forKey: kCURRENTISSUE) {
//            return Issue.init(dictionary: dictionary as! [String : Any])
//        }
//        return nil
//    }
    
//    class func deleteIssue() { //deletes current issue
//        UserDefaults.standard.removeObject(forKey: kCURRENTISSUE)
//        UserDefaults.standard.synchronize()
//    }
}
