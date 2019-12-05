//
//  RegisterViewController.swift
//  Login
//
//  Created by Pierre Chamorro on 12/4/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //MARK:- Action
    @IBAction func closed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func register(_ sender: Any) {
        if(txtName.text!.isEmpty || txtLastName.text!.isEmpty || txtEmail.text!.isEmpty || txtPassword.text!.isEmpty || txtConfirmPassword.text!.isEmpty){
            UIAlert.instance.alertView(tilte: "Alerta!", menssage: "Faltan ingresar datos.", vc: self)
            return
        }
        if(txtPassword.text != txtConfirmPassword.text){
            UIAlert.instance.alertView(tilte: "Alerta!", menssage: "La contraseña no coincide con la confirmación.", vc: self)
            return
        }
        self.register(name:txtName.text!,lastname:txtLastName.text!,user:txtEmail.text!,password:txtPassword.text!)
    }
}
