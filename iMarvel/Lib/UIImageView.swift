//
//  UIImageView.swift
//  iMarvel
//
//  Created by user195088 on 5/15/21.
//

import UIKit


extension UIImageView {
    
    static func iconeImageView(width: CGFloat = 64, height: CGFloat = 64) -> UIImageView {
        let imagem = UIImageView()
        
        
        //set image and color
        imagem.size(size: .init(width: width, height: height))
        imagem.backgroundColor = .red
        imagem.layer.borderWidth = 0.5
        imagem.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        
        //arredondar cantos
        imagem.layer.cornerRadius = 12
        imagem.clipsToBounds = true
        
        return imagem
    }
    
    static func screenShootImageView() -> UIImageView {
        let image = UIImageView()
        
        
        image.layer.cornerRadius = 12
        image.layer.borderWidth = 0.5
        image.layer.borderColor = UIColor(white: 0.5, alpha: 1).cgColor
        
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        
        
        return image
    }
    
    
}
