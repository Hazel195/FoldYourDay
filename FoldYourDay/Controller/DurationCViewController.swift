//
//  DurationCViewController.swift
//  FoldYourDay
//
//  Created by Hazel Kim on 6/1/22.
//  Copyright © 2022 Hazel Ki,. All rights reserved.
//

import UIKit

class DurationCViewController: UIViewController {

    @IBOutlet weak var durationSlider: UISlider!
    
    var newCroissant = Croissant()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        newCroissant.duration = Int(durationSlider.value)
        if segue.identifier == "addDuration" {
            let VC = segue.destination as! NotificationCViewController
            VC.newCroissant = newCroissant
        }
    }
    
    
    /*@IBAction func saveDuration(_ sender: UIButton) {
        newCroissant!.duration = Int(durationSlider.value)
    }
    
    
    func saveDuration () {
        //newCroissant.duration = Int(durationSlider.value)
        
    }*/

}
