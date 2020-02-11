//
//  ViewController.swift
//  NGSpmShowcaseProject
//
//  Created by Paweł Kozielecki on 11/02/2020.
//  Copyright © 2020 Netguru. All rights reserved.
//

import UIKit
import NGSpmShowcase

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSpmAdoptionRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let adoptionRate = NGSpmAdoptionRate.high
        labelSpmAdoptionRate.text = "\(adoptionRate.rawValue)"
    }
}

