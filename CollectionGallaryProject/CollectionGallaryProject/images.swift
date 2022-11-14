//
//  images.swift
//  CollectionGallaryProject
//
//  Created by Brahmastra on 11/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import Foundation
import UIKit

struct Image{
    static let f0: UIImage = UIImage(named: "f0.jpeg")!
     static let f1: UIImage = UIImage(named: "f1.jpeg")!
     static let f2: UIImage = UIImage(named: "f2.jpeg")!
     static let f3: UIImage = UIImage(named: "f3.jpeg")!
     static let f4: UIImage = UIImage(named: "f4.jpeg")!
     static let f5: UIImage = UIImage(named: "f5.jpeg")!
     static let frontA: UIImage = UIImage(named: "frontA.jpeg")!
      static let frontB: UIImage = UIImage(named: "frontB.jpeg")!
     static let frontC: UIImage = UIImage(named: "frontC.jpeg")!
     static let frontD: UIImage = UIImage(named: "frontD.jpeg")!
     static let frontF: UIImage = UIImage(named: "frontF.jpeg")!
     static let frontG: UIImage = UIImage(named: "frontG.jpeg")!
     static let frontH: UIImage = UIImage(named: "frontH.jpeg")!
     static let frontI: UIImage = UIImage(named: "frontI.jpeg")!
     static let frontJ: UIImage = UIImage(named: "frontJ.jpeg")!
     static let frontK: UIImage = UIImage(named: "frontK.jpeg")!
     static let frontL: UIImage = UIImage(named: "frontL.jpeg")!
   
//    static let f0: UIImage = UIImage(named: "f0.jpeg")!
//    static let f1: UIImage = UIImage(named: "f1.jpeg")!
//    static let f2: UIImage = UIImage(named: "f2.jpeg")!
//    static let f3: UIImage = UIImage(named: "f3.jpeg")!
//    static let f4: UIImage = UIImage(named: "f4.jpeg")!
//    static let f5: UIImage = UIImage(named: "f5.jpeg")!
//    static let frontA: UIImage = UIImage(named: "frontA.jpeg")!
//     static let frontB: UIImage = UIImage(named: "frontB.jpeg")!
//    static let frontC: UIImage = UIImage(named: "frontC.jpeg")!
//    static let frontD: UIImage = UIImage(named: "frontD.jpeg")!
//    static let frontF: UIImage = UIImage(named: "frontF.jpeg")!
//    static let frontG: UIImage = UIImage(named: "frontG.jpeg")!
//    static let frontH: UIImage = UIImage(named: "frontH.jpeg")!
//    static let frontI: UIImage = UIImage(named: "frontI.jpeg")!
//    static let frontJ: UIImage = UIImage(named: "frontJ.jpeg")!
//    static let frontK: UIImage = UIImage(named: "frontK.jpeg")!
//    static let frontL: UIImage = UIImage(named: "frontL.jpeg")!
//
    
    }
extension UIViewController{
       func pushView(viewController: UIViewController){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .fade
        self.view.window?.layer.add(transition, forKey: kCATransition)
            navigationController?.pushViewController(viewController, animated: true)
           
       }
    func dimissView(viewController: UIViewController){
          let transition = CATransition()
          transition.duration = 0.3
        transition.type = .reveal
        transition.subtype = .fromBottom
          self.view.window?.layer.add(transition, forKey: kCATransition)
              navigationController?.popViewController(animated: true)
         }
       }

