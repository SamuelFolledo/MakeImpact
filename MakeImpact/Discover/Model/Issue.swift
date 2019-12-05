//
//  Issue.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/2/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

class Issue {
    let issueID: String!
    let issueMainCategory: String!
    var issueSecondCategory: String = ""
    var issueContact: String = ""
    let issueImage: UIImage!
    
    init(issueID: String, issueMainCategory: String, issueSecondCategory: String, issueContact: String, issueImage: UIImage = kSAMPLEDISCOVERIMAGE) {
        self.issueID = issueID
        self.issueMainCategory = issueMainCategory
        self.issueSecondCategory = issueSecondCategory
        self.issueContact = issueContact
        self.issueImage = issueImage
    }
    
    init(dictionary: [String: Any]) {
        self.issueID = dictionary[kISSUEID] as? String
        self.issueMainCategory = dictionary[kISSUEMAINCATEGORY] as? String
        self.issueSecondCategory = (dictionary[kISSUESECONDCATEGORY] as? String)!
        self.issueContact = (dictionary[kISSUECONTACT] as? String)!
        self.issueImage =  UIImage(data: dictionary[kISSUEIMAGE] as! Data)
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
