//
//  UserHealthController.swift
//  Wake-Up Signals
//
//  Created by Patrik Kemeny on 16/8/19.
//  Copyright © 2019 Patrik Kemeny. All rights reserved.
//

import UIKit
import Foundation

class HealthController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
  
    
    let Hkit = HealtKitManager()
    
    
    
    let TitleTextField: UITextField = {
        let txtField = UITextField()
        txtField.text = "Collected Health Data"
        return txtField
    }()
    
    
    
    
    
    let cellId = "HCellID"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        
        navigationItem.title = "Collected Health Data"
        
        
        collectionView?.register(HealthHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerId")
        
        collectionView?.register(HealthCell.self, forCellWithReuseIdentifier: cellId)
      
        

    }
      override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HealthCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        return CGSize(width: width, height: 66)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath) as! HealthHeader
        
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    

}



