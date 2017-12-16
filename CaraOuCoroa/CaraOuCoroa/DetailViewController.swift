//
//  DetailViewController.swift
//  CaraOuCoroa
//
//  Created by Aline Ebone on 01/12/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var result = 0;
    
    @IBOutlet weak var resultImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (result == 0) {
            resultImg.image = #imageLiteral(resourceName: "moeda_cara")
        } else {
             resultImg.image = #imageLiteral(resourceName: "moeda_coroa")
        }
        
    }
    
}
