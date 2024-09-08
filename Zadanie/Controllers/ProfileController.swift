//
//  ProfileController.swift
//  Zadanie
//
//  Created by Szymon Lech on 07/09/2024.
//

import UIKit

class ProfileController: UIViewController {
    

    var username: String?
    var lastLogin: Date?

    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var lastLoginLabel: UILabel!
    
    @IBOutlet weak var imageUser: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        if let username = username {
            usernameLabel.text = username
            self.navigationItem.title = username
            
            
            switch username {
            case "admin":
                imageUser.image = UIImage(named: "Admin")
            case "kasia":
                imageUser.image = UIImage(named: "Kasia")
            default:
                imageUser.image = nil
            }
        }
        
        if let lastLogin = lastLogin {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            lastLoginLabel.text =  dateFormatter.string(from: lastLogin)
        }
        
    }
    

}
