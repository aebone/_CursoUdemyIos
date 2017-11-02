//
//  ViewController.swift
//  FrasesDoDia
//
//  Created by Aline Ebone on 29/10/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fraseLabel: UILabel!

    @IBAction func novaFrase(_ sender: UIButton) {
        
        var frases: [String] = ["Frase1", "Frase2", "Frase3"]
        frases.append("Frase4")
        
        let rdnNumber: Int = Int(arc4random_uniform(4))
        fraseLabel.text = frases[rdnNumber]
    }
    
}

