//
//  ViewModelVC.swift
//  Sample
//
//  Created by gowri anguraj on 22/10/19.
//  Copyright © 2019 gowri anguraj. All rights reserved.
//

import Foundation
struct AlbumModels {
    var dogName : String?
    var description : String?
    var age : Int?
    var url : String?
    
    init(albums:data) {
        self.dogName = albums.dogName
        self.description = albums.description
        self.age = albums.age
        self.url = albums.url
    }
}
