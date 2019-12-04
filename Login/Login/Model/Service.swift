//
//  Service.swift
//  Login
//
//  Created by Pierre Chamorro on 12/4/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//

import Foundation

class Service {
    static let sharedService = Service()
  
    func login(user:String,password:String, successResponse success: @escaping(Dictionary<String,AnyObject>) -> Void, failureResponse failure: @escaping(_ errorMsg: String) -> Void) -> Void{
        let url = "users/login"
        let msg = "Iniciando sesion"
        
        let params = [
            "login":user,
            "password":password
            ] as [String: AnyObject]
        
       NetworkManager.postUrlWithCompletion(url, params: params, message: msg) { (response, error) in
            if let response = response {
                success(response)
            }else if let errorMsg = error {
                failure(errorMsg)
            }
        }
    }
    
    func register(name:String,lastname:String,user:String,password:String, successResponse success: @escaping(Dictionary<String,AnyObject>) -> Void, failureResponse failure: @escaping(_ errorMsg: String) -> Void) -> Void{
        let url = "users/register"
        let msg = "Registrando usuario"
        
        let params = [
            "blUserLocale": "en",
            "email": user,
            "password": password,
            "name": name,
            "lastname":lastname
            ] as [String: AnyObject]
        
        NetworkManager.postUrlWithCompletion(url, params: params, message: msg) { (response, error) in
            if let response = response {
                success(response)
            }else if let errorMsg = error {
                failure(errorMsg)
            }
        }
    }
}
