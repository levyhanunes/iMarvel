//
//  BuscaCell.swift
//  iMarvel
//
//  Created by user195088 on 5/15/21.
//

import UIKit


class BuscaCell : UITableViewCell {
    
    
    let iconeImageView : UIImageView = {
        
        let image = UIImageView()
        
    }()
    
    //init passando style e o reuse da cell "cellId"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        
        
        
    }
    
    
    
    
    //iniciar o construtor pq estava dando erro
    required init?(coder: NSCoder) {
        fatalError()
    }
}
