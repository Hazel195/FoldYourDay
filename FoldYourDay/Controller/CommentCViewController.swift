//
//  CommentCViewController.swift
//  FoldYourDay
//
//  Created by Hazel Kim on 6/1/22.
//  Copyright © 2022 Hazel Ki,. All rights reserved.
//

import UIKit

class CommentCViewController: UIViewController {

    @IBOutlet weak var commentsTextField: UITextField!
    
    var newCroissant = Croissant()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //saveComments()
    }
    
    
    /*@IBAction func saveComments(_ sender: UIButton) {
        newCroissant!.comments = commentsTextField.text ?? ""
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addComments" {
            let VC = segue.destination as! MainViewController
            VC.newlyBakedCroissant = newCroissant
            newCroissant.title = ""
        }
    }
}
