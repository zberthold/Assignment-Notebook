//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Zoe Berthold on 7/9/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class Assignment: Codable {
    //title, course, due date, description
    var title : String
    var course : String
    var dueDate : String
    var description : String
    
    init(title : String, course : String, dueDate : String, description: String){
        self.title = title
        self.course = course
        self.dueDate = dueDate
        self.description = description
    }

}
