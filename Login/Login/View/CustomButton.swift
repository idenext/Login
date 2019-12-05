//
//  CustomButton.swift
//  Login
//
//  Created by iDENext on 12/5/19.
//  Copyright © 2019 Pierre Chamorro. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    var padLeft:CGFloat = 0.0;
    var padRight:CGFloat = 0.0;
    var padTop:CGFloat = 0.0;
    var padBottom:CGFloat = 0.0;
    
    
    @IBInspectable open var borderColor:UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
        }
    }
    
    @IBInspectable open var borderRadius:CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.borderRadius
        }
    }
    
    @IBInspectable open var borderWidth:CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }
    
    override func contentRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: self.padTop, left: self.padLeft, bottom: self.padBottom, right: self.padRight))
    }
    
    @IBInspectable open var SubRaya:Bool = false{
          didSet {
            let attributeString = NSAttributedString(string: self.titleLabel?.text ?? "", attributes:
                  [.underlineStyle: NSUnderlineStyle.single.rawValue])
            self.setAttributedTitle(attributeString, for: .normal)
          }
      }
}
