//
//  BuscaCell.swift
//  iMarvel
//
//  Created by user195088 on 5/15/21.
//

import UIKit


class BuscaCell : UITableViewCell {
    
    
    let iconeImageView : UIImageView = .iconeImageView()
    let nameLabel : UILabel = .textLabel(text: "Character Name", fontSize: 18, numberOfLines: 2)
    let descriptionLabel: UILabel = .textLabel(text: "Character Description", fontSize: 14)
    let obterButton : UIButton = .obterButton()
    
    let characterImage : UIImageView = .screenShootImageView()
    
    //init passando style e o reuse da cell "cellId"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //stackview na vertical
        let descriptionCharacterStackView = UIStackView(arrangedSubviews: [nameLabel])
        descriptionCharacterStackView.spacing = 8
        descriptionCharacterStackView.axis = .vertical
        
        
        //stack mae center
        let headerStackView = UIStackView(arrangedSubviews: [descriptionCharacterStackView, obterButton])
        headerStackView.spacing = 12
        headerStackView.alignment = .center
        
        
        let screenshootStackView = UIStackView(arrangedSubviews: [
        
            characterImage
        ])
        
        
        //StackView Global
        let globalStackVeiw = UIStackView(arrangedSubviews: [headerStackView, screenshootStackView])
        globalStackVeiw.spacing = 16
        globalStackVeiw.axis = .vertical
        
        
        
        
        
        
        
        addSubview(globalStackVeiw)
        globalStackVeiw.preencherSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
        
        
    }
    
    
    
    
    //iniciar o construtor pq estava dando erro
    required init?(coder: NSCoder) {
        fatalError()
    }
}
