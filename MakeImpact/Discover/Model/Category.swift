//
//  Category.swift
//  MakeImpact
//
//  Created by Macbook Pro 15 on 12/21/19.
//  Copyright © 2019 SamuelFolledo. All rights reserved.
//

import UIKit

enum Category: CaseIterable {
/*
    - Categories for Issues and Charities
    - To add a new category, add the new case, add string value in CategoryConstant.swift, update in text computed property
*/
    
//Impact the world
    case worldHunger, poverty,
//Technology
    womenInTech, technology, innovative,
//Recycling
    recycle, reusableEnergy,
//Save Earth
    earth, forest, endangeredSpecies, globalWarming,
//Politics
    politics,
//Area
    local, national, worldwide
    
    var text: String {
        switch self {
        case .worldHunger:
            return kWORLDHUNGER
        case .poverty:
        return kPOVERTY
        case .womenInTech:
            return kWOMENINTECH
        case .technology:
            return kTECHNOLOGY
        case .innovative:
            return kINNOVATIVE
        case .recycle:
            return kRECYCLE
        case .reusableEnergy:
            return kREUSABLEENERGY
        case .forest:
            return kFOREST
        case .earth:
            return kEARTH
        case .endangeredSpecies:
            return kENDANGEREDSPECIES
        case .globalWarming:
            return kGLOBALWARMING
        case .politics:
            return kPOLITICS
        case .local:
            return kLOCAL
        case .national:
            return kNATIONAL
        case .worldwide:
            return kWORLDWIDE
        }
    }
    
    var image: UIImage {
        switch self {
        case .local:
            return kSAMPLEDISCOVERIMAGE
        default:
            return kSAMPLEDISCOVERIMAGE
        }
    }
}
