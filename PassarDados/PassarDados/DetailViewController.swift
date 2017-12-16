//
//  DetailViewController.swift
//  PassarDados
//
//  Created by Aline Ebone on 29/11/17.
//  Copyright © 2017 Aline Ebone. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var textoRecebido: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = textoRecebido
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
