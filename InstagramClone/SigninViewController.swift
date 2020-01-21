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
        emailTextField.attributedPlaceholder = NSAttributedString (string:emailTextField.placeholder! , attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        passwordTextField.backgroundColor = UIColor.clear
        passwordTextField.attributedPlaceholder = NSAttributedString (string:passwordTextField.placeholder! , attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }

}
