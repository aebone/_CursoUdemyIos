//
//  Filme.swift
//  MeusFilmes
//
//  Created by Aline Ebone on 04/01/18.
//  Copyright © 2018 Aline Ebone. All rights reserved.
//

import UIKit

class Filme {
    var title: String
    var description: String
    var avatar: UIImage
    
    init(title: String, description: String, avatar: UIImage) {
        self.title = title
        self.description = description
        self.avatar = avatar
    }
    
}
