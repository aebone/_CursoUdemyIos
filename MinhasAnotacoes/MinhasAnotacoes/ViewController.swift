//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Aline Ebone on 24/01/18.
//  Copyright © 2018 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytextView: UITextView!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let mynote = UserDefaults.standard.object(forKey: "note") {
            mytextView.text = mynote as! String
        } else {
            mytextView.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func save(_ sender: Any) {
        if let message = mytextView.text {
            UserDefaults.standard.set(message, forKey: "note")
        }
    }
    
}

