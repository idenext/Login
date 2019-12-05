//
//  HomeViewController.swift
//  Login
//
//  Created by iDENext on 12/5/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var txtInfo: UILabel!
    var name = ""
    var lastname = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtInfo.text = "Bienvenido a BIKE MAPS\n\(name) \(lastname)"
    }
    //MAR:-Actions
    @IBAction func signOff(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
