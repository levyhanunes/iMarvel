//
//  UIButton.swift
//  iMarvel
//
//  Created by user195088 on 5/15/21.
//

import UIKit

extension UIButton {
    static func obterButton() -> UIButton {
        let button = UIButton()
        
        button.setTitle("Ver", for: .normal)
        button.setTitleColor(UIColor.azul, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        button.size(size: .init(width: 80, height: 32))
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        
        return button
    }
}


