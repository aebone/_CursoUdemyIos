//
//  ViewController.swift
//  IdadeDeCachorro
//
//  Created by Aline Ebone on 28/10/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var idadeTextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBAction func descobrirIdade(_ sender: UIButton) {
        let idade = Int(idadeTextField.text!)! * 7
        resultadoLabel.text = "A idade do cachorro em anos humanos é: " + String(idade)
    }
    
}

