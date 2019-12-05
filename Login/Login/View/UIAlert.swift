//
//  UIAlert.swift
//  Login
//
//  Created by iDENext on 12/5/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//


import UIKit
import Foundation
class UIAlert {
    static let instance = UIAlert()
    
    func alertView(tilte:String,menssage:String,vc:UIViewController){
        let alert = UIAlertController(title: tilte, message: menssage, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        vc.present(alert, animated: true, completion: nil)
    }
    func showToast(message : String,vc:UIViewController) {
        let toastLabel = UILabel(frame: CGRect(x: vc.view.frame.size.width/2 - 75, y: vc.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        vc.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
