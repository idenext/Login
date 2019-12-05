//
//  LoginViewControllerExtension.swift
//  Login
//
//  Created by Pierre Chamorro on 12/4/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//

import Foundation

extension LoginViewController {
    //MARK:- Service
    func login(user:String,password:String){
        Service.sharedService.login(user: user, password: password, successResponse: { (response) in
            let name = response["name"] as! String
            let lastname = response["lastname"] as! String
            let data = ["name":name,"lastname":lastname]
            self.performSegue(withIdentifier: "home", sender: data)
        }) { (errorMsg) in
            UIAlert.instance.alertView(tilte: "Alerta!", menssage: errorMsg, vc: self)
        }
    }
}
