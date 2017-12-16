//
//  ViewController.swift
//  CaraOuCoroa
//
//  Created by Aline Ebone on 01/12/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let n = arc4random_uniform(2)
        if (segue.identifier == "caraOuCoroa") {
            let destination = segue.destination as! DetailViewController
            destination.result = Int(n)
        }
    }

}
