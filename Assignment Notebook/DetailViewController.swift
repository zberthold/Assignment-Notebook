//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Zoe Berthold on 7/9/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var courseTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureView() {
        //Update the user interface for the detail item
        if let assignment = self.detailItem {
            if titleTextField != nil {
                titleTextField.text = assignment.title
                courseTextField.text = assignment.course
                dueDateTextField.text = assignment.dueDate
                descriptionTextField.text = assignment.description
                
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.title = titleTextField.text!
            assignment.course = courseTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }
    


}

