//
//  ChapterCViewController.swift
//  FoldYourDay
//
//  Created by Hazel Kim on 6/1/22.
//  Copyright © 2022 Hazel Ki,. All rights reserved.
//

import UIKit

class ChapterCViewController: UIViewController {
    
    @IBOutlet weak var chaptersTableView: UITableView!
   
    var newCroissant = Croissant()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(newCroissant.pages)
        //saveChapters()
    }
       
    @IBAction func saveChapter(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addChapters" {
            let VC = segue.destination as! DurationCViewController
            VC.newCroissant = newCroissant
        }
    }
}
