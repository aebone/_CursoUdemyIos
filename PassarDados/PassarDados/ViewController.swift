//
//  ViewController.swift
//  PassarDados
//
//  Created by Aline Ebone on 29/11/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "passarDados" {
            let destination = segue.destination as! DetailViewController
            
            destination.textoRecebido = txtField.text!
        }
    }


}

