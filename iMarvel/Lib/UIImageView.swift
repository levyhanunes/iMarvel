//
//  UIImageView.swift
//  iMarvel
//
//  Created by user195088 on 5/15/21.
//

import UIKit


extension UIImageView {
    
    static func iconeImageView(width: CGFloat = 64, height: CGFloat = 64) -> UIImageView {
        let image = UIImageView()
        
        
        
        image.size(size: .init(width: width, height: height))
        image.backgroundColor = .red
        
        
        return image
    }
}
