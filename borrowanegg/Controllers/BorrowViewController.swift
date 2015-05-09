//
//  BorrowViewController.swift
//  borrowanegg
//
//  Created by Alexandra Luca on 9/05/2015.
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import Foundation
import UIKit

class BorrowViewController: UIViewController {
    
    var label: UILabel!
    var textInput : UITextField!
    var button:UIButton!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1)
        label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center

        label.text = "I need";
        
        textInput = UITextField(frame: CGRectMake(0, 0, 200, 21))
        textInput.center = CGPointMake(160, 320)
        textInput.textAlignment = NSTextAlignment.Center
        textInput.placeholder = "Type the ingredient and quantity"
        
        
        // This is the default setting but be explicit anyway...
        label.setTranslatesAutoresizingMaskIntoConstraints(true)
        
        label.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin |
            UIViewAutoresizing.FlexibleRightMargin |
            UIViewAutoresizing.FlexibleTopMargin |
            UIViewAutoresizing.FlexibleBottomMargin
        label.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY-200)
        textInput.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY-100)
        
        button   = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = CGRectMake(100, 100, 100, 100)
        button.center = CGPointMake(160, 400)
        button.setTitle("Borrow", forState: UIControlState.Normal)
        button.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY)
       // let image = UIImage(named: "borrow") as UIImage!
      //  button.setImage(image, forState: UIControlState.Normal)
        button.addTarget(self, action: "borrow:", forControlEvents: UIControlEvents.TouchUpInside)
        
        
       // button.titleLabel! = UILabel()
        
        
        self.view.addSubview(label!)
        self.view.addSubview(textInput!)
        self.view.addSubview(button)
        
    }
    
    func borrow(sender :UIButton){
        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "title";
        alertView.message = "Wait for somebody";
        alertView.show();
    }

    
}
