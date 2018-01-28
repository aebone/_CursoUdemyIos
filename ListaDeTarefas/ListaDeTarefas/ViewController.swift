//
//  ViewController.swift
//  ListaDeTarefas
//
//  Created by Aline Ebone on 25/01/18.
//  Copyright © 2018 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tasktf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(_ sender: Any) {
        
        if let task = tasktf.text {
            // instantiate
            let taskInit = TaskUserDefaults()
            
            taskInit.save(task: task)
            tasktf.text = ""
            
            print(taskInit.list())
        }
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
