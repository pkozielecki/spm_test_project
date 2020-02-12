//
//  ViewController.swift
//  NGSpmShowcaseProject
//
//  Created by Paweł Kozielecki on 11/02/2020.
//  Copyright © 2020 Netguru. All rights reserved.
//

import UIKit
import NGSpmShowcase
import MBProgressHUD

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSpmAdoptionRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let adoptionRate = NGSpmAdoptionRate.high
        labelSpmAdoptionRate.text = "\(adoptionRate.rawValue)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        MBProgressHUD.showAdded(to: self.view, animated: true)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) { [weak self] in
            guard let self = self else { return }
            MBProgressHUD.hide(for: self.view, animated: true)
        }
    }
}

