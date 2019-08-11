//
//  UserHeader.swift
//  Wake-Up Signals
//
//  Created by Patrik Kemeny on 11/8/19.
//  Copyright © 2019 Patrik Kemeny. All rights reserved.
//

import UIKit
import Firebase

class UserProfileHeader: UICollectionViewCell {
   
    let profileImageView: UIImageView = {
        let imgView = UIImageView()
        return imgView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        profileImageView.layer.cornerRadius = 40
        profileImageView.clipsToBounds = true
        setupProfileImage()
    }
    
    fileprivate func setupProfileImage(){
        URLSession.shared.dataTask(with: <#T##URL#>) { (data, response, err) in
            <#code#>
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
