//
//  ViewController.swift
//  GeradorDeNumeros
//
//  Created by Aline Ebone on 29/10/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultadoLabel: UILabel!
    @IBAction func gerarNumero(_ sender: UIButton) {
        
        let numero = arc4random_uniform(11)
        resultadoLabel.text = String(numero)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

