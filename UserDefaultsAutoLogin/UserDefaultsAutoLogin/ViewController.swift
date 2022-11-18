//
//  ViewController.swift
//  UserDefaultsAutoLogin
//
//  Created by Brahmastra on 18/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameL: UILabel!
    
    @IBOutlet weak var passwordL: UILabel!
    
    @IBOutlet weak var usernametxtfld: UITextField!
    
    @IBOutlet weak var passwordtextfld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let logindetails=UserDefaults.standard.value(forKey: "username")
        if logindetails != nil
        {
            usernametxtfld.text = UserDefaults.standard.value(forKey: "username") as? String
            passwordtextfld.text = UserDefaults.standard.value(forKey: "password") as? String
        }
        
        
        
        
    }


    @IBAction func loginbtn(_ sender: Any) {
        let alert=UIAlertController(title: "Saving", message: "Do You Want to Save Login Details", preferredStyle: .alert)
        
        let yesbutton=UIAlertAction(title: "Yes", style: .default) { (action) in
            UserDefaults.standard.set(self.usernametxtfld.text!,forKey: "username")
            UserDefaults.standard.set(self.passwordtextfld.text!,forKey: "password")
            self.performSegue(withIdentifier: "segue1", sender: self)
        }
        
        let nobutton=UIAlertAction(title: "No", style: .default) { (action) in
            print("You Have Not Saved Login Details")
             self.performSegue(withIdentifier: "segue1", sender: self)
            
        }
        alert.addAction(yesbutton)
        alert.addAction(nobutton)
        present(alert,animated: true,completion: nil)
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1"
        {
            let desVC=segue.destination as! Home
            desVC.userpass="Hello, \(usernametxtfld.text!)"
        }
    }
}

