//
//  UILabel.swift
//  iMarvel
//
//  Created by user195088 on 5/15/21.
//

import UIKit

extension UILabel {
    
    static func textLabel(text: String, fontSize: CGFloat, numberOfLines: Int = 1) -> UILabel {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.numberOfLines = numberOfLines
        label.text = text
        
        return label

    }
}
