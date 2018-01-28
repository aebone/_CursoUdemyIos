//
//  Task.swift
//  ListaDeTarefas
//
//  Created by Aline Ebone on 25/01/18.
//  Copyright © 2018 Aline Ebone. All rights reserved.
//

import Foundation

class TaskUserDefaults {
    
    let dadosSalvos: [String] = []

    func list() -> Array<String> {
        if let dadosSalvos = UserDefaults.standard.object(forKey: "tarefasKey") {
            return dadosSalvos as! Array<String>
        } else {
            return []
        }
    }
    
    func save(task: String) {
        var tasks = list()
        tasks.append(task)
        UserDefaults.standard.set(tasks, forKey: "tarefasKey")
    }

    func remove(index: Int) {
        var tasks = list()
        tasks.remove(at: index)
        UserDefaults.standard.set(tasks, forKey: "tarefasKey")
    }
}
