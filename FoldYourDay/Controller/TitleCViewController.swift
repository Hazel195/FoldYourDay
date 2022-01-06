//
//  TitleCViewController.swift
//  FoldYourDay
//
//  Created by Hazel Kim on 6/1/22.
//  Copyright © 2022 Hazel Ki,. All rights reserved.
//

import UIKit


class TitleCViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /*@IBAction func saveTitle(_ sender: UIButton) {
        newCroissant.setTitle(title: titleTextField.text!)
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addTitle" {
            let VC = segue.destination as! PagesCViewController
            VC.newCroissant.setTitle(title: titleTextField.text!)
        }
    }

}
