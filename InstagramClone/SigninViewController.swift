//
//  SigninViewController.swift
//  InstagramClone
//
//  Created by Kim Yeon Jeong on 2020/1/14.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emailTextField.backgroundColor = UIColor.clear
        emailTextField.tintColor = UIColor.white
        emailTextField.attributedPlaceholder = NSAttributedString (string:emailTextField.placeholder! , attributes: [NSAttributedString.Key.foregroundColor: UIColor(white:1.0, alpha:0.6)])
        let bottomLayerEmail = CALayer()
        bottomLayerEmail.frame = CGRect(x: 0, y: 29, width: 300, height: 0.6)
        bottomLayerEmail.backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 0.8).cgColor
    emailTextField.layer.addSublayer(bottomLayerEmail)
        
        
        passwordTextField.backgroundColor = UIColor.clear
            passwordTextField.tintColor = UIColor.white
            passwordTextField.attributedPlaceholder = NSAttributedString (string:emailTextField.placeholder! , attributes: [NSAttributedString.Key.foregroundColor: UIColor(white:1.0, alpha:0.6)])
               
        let bottomLayerPassword = CALayer()
        bottomLayerPassword.frame = CGRect(x: 0, y: 29, width: 300, height: 0.6)
        bottomLayerPassword.backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 0.8).cgColor
    passwordTextField.layer.addSublayer(bottomLayerPassword)
        
        
        
       
    }

}
