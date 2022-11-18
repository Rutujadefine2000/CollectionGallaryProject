//
//  Home.swift
//  UserDefaultsAutoLogin
//
//  Created by Brahmastra on 18/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    @IBOutlet weak var label2: UILabel!
    var userpass:String=""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        label2.text=userpass
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
