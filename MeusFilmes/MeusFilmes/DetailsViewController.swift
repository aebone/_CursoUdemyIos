//
//  DetailsViewController.swift
//  MeusFilmes
//
//  Created by Aline Ebone on 05/01/18.
//  Copyright © 2018 Aline Ebone. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var tit: UILabel!
    @IBOutlet weak var des: UILabel!
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = filme.avatar
        tit.text = filme.title
        des.text = filme.description
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
