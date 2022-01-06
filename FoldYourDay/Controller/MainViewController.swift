//
//  MainViewController.swift
//  FoldYourDay
//
//  Created by Hazel Kim on 6/1/22.
//  Copyright © 2022 Hazel Ki,. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var newlyBakedCroissant: Croissant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showNewCroissant()
    }
    
    func showNewCroissant () {
        if (newlyBakedCroissant != nil) {
            print(newlyBakedCroissant!.title ?? "No new croissant backed")
        }
    }
}
