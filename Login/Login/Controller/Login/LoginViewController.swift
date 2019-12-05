//
//  LoginViewController.swift
//  Login
//
//  Created by Pierre Chamorro on 12/4/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "home" {
            let vc = segue.destination as! HomeViewController
            let data = sender as! [String : String]
            vc.name = data["name"]!
            vc.lastname = data["lastname"]!
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //MARK:- Actions
    @IBAction func forgotPassword(_ sender: Any) {
        print("Pressed forgot password")
    }
    @IBAction func login(_ sender: Any) {
        if(txtUser.text!.isEmpty || txtPassword.text!.isEmpty){
            UIAlert.instance.alertView(tilte: "Alerta!", menssage: "Faltan ingresar datos.", vc: self)
        }else{
          login(user: txtUser.text!, password: txtPassword.text!)
        }
    }
    @IBAction func register(_ sender: Any) {
        self.performSegue(withIdentifier: "register", sender: nil)
    }
}
