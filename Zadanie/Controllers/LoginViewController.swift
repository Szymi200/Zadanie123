//
//  LoginViewController.swift
//  Zadanie
//
//  Created by Szymon Lech on 07/09/2024.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    let users = [
        "admin": "admin1234",
        "kasia": "kasia1234"
    ]
    
    var loggedInUser: String?
    var lastLoginTime: Date?
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        
        guard let username = loginTextField.text, let password = passwordTextField.text else { return }
        
        if let validPassword = users[username], validPassword == password {
            loggedInUser = username
            lastLoginTime = Date()
        } else {
            let alert = UIAlertController(title: "Error", message: "Logowanie się nie powiodło.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToMenu" {
            if let tabBarController = segue.destination as? UITabBarController {
                
                if let menuVC = tabBarController.viewControllers?[0] as? MenuViewController {
                    menuVC.username = loggedInUser
                }
                
                if let profileVC = tabBarController.viewControllers?[1] as? ProfileController {
                    profileVC.username = loggedInUser
                    profileVC.lastLogin = lastLoginTime
                }
            }
        }
    }
}
