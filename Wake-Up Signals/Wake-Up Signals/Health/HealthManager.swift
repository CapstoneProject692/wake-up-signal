//
//  HealthManager.swift
//  Wake-Up Signals
//
//  Created by Patrik Kemeny on 18/8/19.
//  Copyright © 2019 Patrik Kemeny. All rights reserved.
//

import Foundation
import UIKit
import HealthKit

class HealtKitManager {
    //all health data storage
    //user is the master of their data
    let healthStore = HKHealthStore()
    
    func authorizeHealthKit() -> Bool{
        var isEnabled = true
        if HKHealthStore.isHealthDataAvailable() {
            let stepcount = NSSet(object: HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount) ?? 6)
            
            let dataTypesToRead = NSSet(object: stepcount)
            let dataTypesToWrite = NSSet(object: stepcount)
            
            healthStore.requestAuthorization(toShare: nil, read: (stepcount as! Set<HKObjectType>)) { (success, error) in
                isEnabled = success
            }
        }else {
                isEnabled = false
            }
            return isEnabled
        }
    
    }



