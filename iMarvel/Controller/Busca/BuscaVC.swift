//
//  BuscaVC.swift
//  iMarvel
//
//  Created by user195088 on 5/15/21.
//

import UIKit

class BuscaVC : UITableViewController, UISearchBarDelegate {
    
    
    let cellId = "cellId"
    var personagem : [ReturnApi] = []
    var total = 0
    
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        tableView.register(BuscaCell.self, forCellReuseIdentifier: cellId )
        
        self.configurarSearchBar()
        
    }
    
    func loadCharacters() {
        
    }
    
    func configurarSearchBar(){
        navigationItem.searchController = self.searchController
        
        self.searchController.obscuresBackgroundDuringPresentation = false
        self.searchController.searchBar.placeholder = "Search Characters"
        self.searchController.searchBar.delegate = self
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.buscaCharacters(texto: searchText)
    }
      
}

var contador : Int = 0

extension BuscaVC {
    func buscaCharacters(texto: String){
        ApiService.shared.buscaCharacters2(texto: texto) { (characters, err) in
            if let characters = characters {


                DispatchQueue.main.async {
                    self.personagem = [characters]
                    self.tableView.reloadData()
                    //print(characters.data.results)
                    print(self.personagem.count)
                    contador += 1
                }
                //print(contador)
            }
            
        }
        
    }
}

extension BuscaVC {
    
    
    //altura da celula
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return .init(tableView.bounds.width * 0.8)
    }
    
    //quantidade de linhas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.personagem.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BuscaCell
        
        return cell
    }
}

