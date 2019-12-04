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
    func login(){
        Service.sharedService.login(user: "chamo.int@gmail.com", password: "1234", successResponse: { (response) in
            print(response)
        }) { (errorMsg) in
            print(errorMsg)
        }
    }
}
