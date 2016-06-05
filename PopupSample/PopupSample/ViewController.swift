//
//  ViewController.swift
//  PopupSample
//
//  Created by HAO WANG on 5/29/16.
//  Copyright © 2016 Hacknocraft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PromptViewDelegate {

    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var popupButton: UIButton!
    
    weak var popup: HCCustomPopupView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func popupButtonTapped(sender: AnyObject) {
        
        let promptView = PromptView.instanceFromNib() as! PromptView
        promptView.delegate = self
        let popup = HCCustomPopupView.init(contentView: promptView)
        popup.show()
        
        self.popup = popup;
    }
    
    func didTouchButton(sender: UIButton?) {
        
        if let button = sender {
            promptLabel.text = "Button touched: \(button.tag)"
        }
     
        if let popup = self.popup {
            popup.dismiss();
        }
    }
    
}

