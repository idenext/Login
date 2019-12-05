//
//  NetworkManager.swift
//  Login
//
//  Created by Pierre Chamorro on 12/4/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//

import Foundation
import Alamofire
import SVProgressHUD


class NetworkManager {
    typealias CompletionBlock = (Bool, Dictionary<String,AnyObject>) -> Void

    public static func postUrlWithCompletion(_ url : String!, params : [String: AnyObject]!, message: String, completion: @escaping(Dictionary<String,AnyObject>?,String?) -> Void) {
        let applicationID = "BAABF678-A567-744F-FF7B-331613C30400"
        let apiKey_Rest = "58B320EA-4506-418A-B88F-4AFF94611A1D"
        let new_url = "https://api.backendless.com/\(applicationID)/\(apiKey_Rest)/".appending(url!)
        SVProgressHUD.show(withStatus: message)
        let method = HTTPMethod.post
        Alamofire.request(new_url, method: method, parameters: params, encoding: JSONEncoding.default, headers: nil).responseJSON { response in
            SVProgressHUD.dismiss()
            if(response.response?.statusCode == 200){
                completion(response.result.value as! Dictionary,nil)
            }else if(response.response?.statusCode == 401){
                completion(nil,"El usuario ó contraseña es incorrecto.")
            }else{
                completion(nil,"Estamos presentando problemas en nuestro servicio, inténtelo de nuevo más tarde.")
            }
        }
    }
}
