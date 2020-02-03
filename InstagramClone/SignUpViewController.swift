//
//  SignUpViewController.swift
//  InstagramClone
//
//  Created by Kim Yeon Jeong on 2020/1/14.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase


class SignUpViewController: UIViewController {
   
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func dismissOnClicked(_ sender: Any) { dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userNameTextField.backgroundColor = UIColor.clear
        userNameTextField.tintColor = UIColor.white
        userNameTextField.attributedPlaceholder = NSAttributedString (string:userNameTextField.placeholder! , attributes: [NSAttributedString.Key.foregroundColor: UIColor(white:1.0, alpha:0.6)])
        let bottomLayerUser = CALayer()
        bottomLayerUser.frame = CGRect(x: 0, y: 29, width: 300, height: 0.6)
        bottomLayerUser.backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 0.8).cgColor
        
       
        emailTextField.backgroundColor = UIColor.clear
        emailTextField.tintColor = UIColor.white
        emailTextField.attributedPlaceholder = NSAttributedString (string:emailTextField.placeholder! , attributes: [NSAttributedString.Key.foregroundColor: UIColor(white:1.0, alpha:0.6)])
            let bottomLayerEmail = CALayer()
            bottomLayerEmail.frame = CGRect(x: 0, y: 29, width: 300, height: 0.6)
            bottomLayerEmail.backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 0.8).cgColor
        emailTextField.layer.addSublayer(bottomLayerEmail)
            
            
            passwordTextField.backgroundColor = UIColor.clear
                passwordTextField.tintColor = UIColor.white
                passwordTextField.attributedPlaceholder = NSAttributedString (string:passwordTextField.placeholder! , attributes: [NSAttributedString.Key.foregroundColor: UIColor(white:1.0, alpha:0.6)])
                   
            let bottomLayerPassword = CALayer()
            bottomLayerPassword.frame = CGRect(x: 0, y: 29, width: 300, height: 0.6)
            bottomLayerPassword.backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 0.8).cgColor
        passwordTextField.layer.addSublayer(bottomLayerPassword)
        
        
        profileImage.layer.cornerRadius = 45
        profileImage.clipsToBounds = true
            
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user: User?, error: Error?) in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            let ref = Database().reference()
            let usersRefrence = ref.child("user")
            // print(usersRefrence.description())
            // We can see at http://goo.gl/RfcP7r)
            let uid = user?.uid
            let newUserRefrence = usersRefrence.child(uid!)
            newUserRefrence.setValue(["username":self.userNameTextField.text!, "email":self.emailTextField.text!])
            //Do not make password value for secret.
            print("desciption\(newUserRefrence.description())")
        }
    }
}
