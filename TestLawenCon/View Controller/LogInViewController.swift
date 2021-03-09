//
//  ViewController.swift
//  TestLawenCon
//
//  Created by Rizqi Imam Gilang Widianto on 09/03/21.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var userName = ""
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        userNameTextField.placeholder = "Insert Username"
        passwordTextField.placeholder = "Insert Password"
        
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        passwordTextField.isSecureTextEntry = true
    }
    
    @IBAction func enterButton(_ sender: UIButton) {
        if userNameTextField.text == "Rizqi" && passwordTextField.text == "Widianto" {
     
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            UserDefaults.standard.set(true, forKey: "status")
            let mapsViewController = storyBoard.instantiateViewController(withIdentifier: "MapsViewController") as! MapsViewController
            mapsViewController.mapsUserName = userNameTextField.text!
            userNameTextField.text = ""
            passwordTextField.text = ""
      
            self.navigationController?.pushViewController(mapsViewController, animated: true)

        } else {
            userNameTextField.text = ""
            passwordTextField.text = ""
            userNameTextField.placeholder = "Wrong Username"
            passwordTextField.placeholder = "Wrong Password"
        }
    }
    
}
