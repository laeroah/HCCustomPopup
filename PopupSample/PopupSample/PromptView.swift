//
//  PromptView.swift
//  PopupSample
//
//  Created by HAO WANG on 6/5/16.
//  Copyright © 2016 Hacknocraft. All rights reserved.
//

import UIKit

class PromptView: UIView {
    
    weak var delegate: PromptViewDelegate?
    
    override func awakeFromNib() {
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 8.0
        self.layer.borderColor = UIColor.blackColor().CGColor
        self.layer.borderWidth = 1
    }
    
    class func instanceFromNib() -> UIView? {
        
        let views = UINib(nibName: "PromptView", bundle: nil).instantiateWithOwner(nil, options: nil)
        for view in views {
            
            if view is PromptView  {
                
                return view as? UIView
            }
        }
        
        return nil
    }
    
    @IBAction func buttonTouched(sender: AnyObject) {
        delegate?.didTouchButton(sender as? UIButton)
    }
}

protocol PromptViewDelegate: class {
    func didTouchButton(sender: UIButton?)
}