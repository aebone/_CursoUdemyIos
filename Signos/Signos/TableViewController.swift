//
//  TableViewController.swift
//  Signos
//
//  Created by Aline Ebone on 17/12/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var signos: [String] = ["Áries", "Leão", "Touro"]
    var significados: [String] = ["Áries qnrlqweiorjwio", "Leãon wjeqoiqwjer", "Touro qrnowqeijroiewr"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "signosTableView", for: indexPath)
        cell.textLabel?.text = signos[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(signos[indexPath.row])
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = UIAlertController(title: signos[indexPath.row], message: significados[indexPath.row], preferredStyle: .alert)
        
        let confirm = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(confirm)
        
        present(alert, animated: true, completion: nil)
    }
    
}
