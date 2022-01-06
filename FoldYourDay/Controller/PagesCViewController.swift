//
//  PagesCViewController.swift
//  FoldYourDay
//
//  Created by Hazel Kim on 6/1/22.
//  Copyright © 2022 Hazel Ki,. All rights reserved.
//

import UIKit

class PagesCViewController: UIViewController {

    @IBOutlet weak var pagesTextField: UITextField!
    @IBOutlet weak var chaptersTextField: UITextField!
    

    var pages: Int?
    var chapters: Int?
    var newCroissant = Croissant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(newCroissant.title)
        //savePages()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addPages" {
            let VC = segue.destination as! ChapterCViewController
            VC.newCroissant.setTitle(title: newCroissant.title!)
            VC.newCroissant.setPages(pages: Int(pagesTextField.text!)!)
            VC.newCroissant.setChapters(chapters: Int(chaptersTextField.text!)!)
        }
    }
    
    
    @IBAction func savePages(_ sender: UIButton) {
        newCroissant.pages = Int(pagesTextField.text!)
        newCroissant.chapters = Int(chaptersTextField.text!)
    }
    
   /* func savePages () {
        pages = Int(pagesTextField.text!)
        chapters = Int(chaptersTextField.text!)
    }*/

}
