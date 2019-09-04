//
//  Driver2.swift
//  Wake-Up Signals
//
//  Created by Patrik Kemeny on 4/9/19.
//  Copyright © 2019 Patrik Kemeny. All rights reserved.
//

import Foundation

class DriverHealthProfile {
    var dateOfBirth: Date?
    var age,stepcount,distanceWalked: Int?
    var bloodType: bloodType?
    var activeEnergy,bodyMass,heartRate: Double?
    var biologicalSex: gender?
    //for apple watch wearers
    var bloodGlucose,bodyTemperature,oxygenSaturation,numberOfTimesFallen: Double?
    
    init(dateOfBirth: Date? = nil,age: Int? = nil,stepcount: Int? = nil,distanceWalked: Int? = nil, bloodType: bloodType? = nil, activeEnergy: Double? = nil,bodyMass: Double? = nil,heartRate: Double? = nil, biologicalSex: gender? = nil,bloodGlucose: Double? = nil,bodyTemperature: Double? = nil,oxygenSaturation: Double? = nil,numberOfTimesFallen: Double? = nil ) {
        self.dateOfBirth = dateOfBirth
        self.age = age
        self.stepcount = stepcount
        self.distanceWalked = distanceWalked
        self.bloodType = bloodType
        self.activeEnergy = activeEnergy
        self.bodyMass = bodyMass
        self.heartRate = heartRate
        self.biologicalSex = biologicalSex
        self.bloodGlucose = bloodGlucose
        self.bodyTemperature = bodyTemperature
        self.oxygenSaturation = oxygenSaturation
        self.numberOfTimesFallen = numberOfTimesFallen
    }
    
}

