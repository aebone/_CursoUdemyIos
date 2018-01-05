//
//  ViewController.swift
//  MeusFilmes
//
//  Created by Aline Ebone on 04/01/18.
//  Copyright © 2018 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    
        filmes.append(Filme(title: "Filme 1", description: "Filme 1 Descrição", avatar: #imageLiteral(resourceName: "filme1")))
        filmes.append(Filme(title: "Filme 2", description: "Filme 2 Descrição", avatar: #imageLiteral(resourceName: "filme2")))
        filmes.append(Filme(title: "Filme 3", description: "Filme 3 Descrição", avatar: #imageLiteral(resourceName: "filme3")))
        filmes.append(Filme(title: "Filme 4", description: "Filme 4 Descrição", avatar: #imageLiteral(resourceName: "filme4")))
        filmes.append(Filme(title: "Filme 5", description: "Filme 5 Descrição", avatar: #imageLiteral(resourceName: "filme5")))
        filmes.append(Filme(title: "Filme 6", description: "Filme 6 Descrição", avatar: #imageLiteral(resourceName: "filme6")))
        filmes.append(Filme(title: "Filme 7", description: "Filme 7 Descrição", avatar: #imageLiteral(resourceName: "filme7")))
        filmes.append(Filme(title: "Filme 8", description: "Filme 8 Descrição", avatar: #imageLiteral(resourceName: "filme8")))
        filmes.append(Filme(title: "Filme 9", description: "Filme 9 Descrição", avatar: #imageLiteral(resourceName: "filme10")))
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetails" {
            if let indexPath = tableView.indexPathForSelectedRow?.item {
                
                let dest = segue.destination as! DetailsViewController
                dest.filme = filmes[indexPath]
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! CustomTableViewCell
        
        cell.avatar.image = filmes[indexPath.row].avatar
        cell.title.text = filmes[indexPath.row].title
        cell.descriptionLabel.text = filmes[indexPath.row].description
        
        cell.avatar.layer.cornerRadius = 42
        
        return cell
    }
}
