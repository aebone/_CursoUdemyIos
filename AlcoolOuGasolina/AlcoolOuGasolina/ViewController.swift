//
//  ViewController.swift
//  AlcoolOuGasolina
//
//  Created by Aline Ebone on 30/10/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var precoAlcool: UITextField!
    @IBOutlet weak var precoGasolina: UITextField!
    @IBOutlet weak var resultado: UILabel!

    @IBAction func calcular(_ sender: UIButton) {
        // setei precoAlcool e precoGasolina se exisre
        if let precoAlcoolTestado = precoAlcool.text {
            if let precoGasolinaTestado = precoGasolina.text {
                print(precoAlcoolTestado)
                print(precoGasolinaTestado)
                
                let valid = self.valida(precoAlcool: precoAlcoolTestado, precoGasolina: precoGasolinaTestado)
                
                print(valid)
                
                if (valid) {
                    let total = Double(precoAlcoolTestado)! / Double(precoGasolinaTestado)!
                    if (total >= 7) {
                        resultado.text = "Melhor usar gasolina."
                    } else {
                        resultado.text = "Melhor usar alcool."
                    }
                }

            }
            
        }
    }
    
    func valida(precoAlcool: String, precoGasolina: String) -> Bool {
        
        var valid = true
        
        if (precoAlcool.isEmpty) {
            resultado.text = "Digite o preço do Alcool!"
            valid = false
        } else if (precoGasolina.isEmpty) {
            resultado.text = "Digite o preço do Gasolina!"
            valid = false
        }
        
        return valid
    }
    
}


