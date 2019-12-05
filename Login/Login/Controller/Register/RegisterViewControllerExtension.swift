//
//  RegisterViewControllerExtension.swift
//  Login
//
//  Created by iDENext on 12/4/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//

import Foundation

extension RegisterViewController {
    //MARK:- Service
    func register(name:String,lastname:String,user:String,password:String){
        Service.sharedService.register(name: name, lastname: lastname, user: user, password: password, successResponse:  { (response) in
            self.dismiss(animated: true, completion: nil)
        }) { (errorMsg) in
            UIAlert.instance.alertView(tilte: "Alerta!", menssage: errorMsg, vc: self)
        }
    }
}
