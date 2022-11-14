//
//  ImageVC.swift
//  CollectionGallaryProject
//
//  Created by Brahmastra on 11/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class ImageVC: UIViewController {

    
    
    var selectIndex: Int = 0
    var imageArr: [MyCustomData] = []
    
    
    fileprivate let scrollerView: UIScrollView = {
        let sv = UIScrollView()
        sv.contentMode = .scaleAspectFit
         sv.showsVerticalScrollIndicator = false
         sv.showsHorizontalScrollIndicator = false
        sv.backgroundColor = .black
        sv.minimumZoomScale = 1
        sv.maximumZoomScale = 6
        return sv
        
    }()
    
    fileprivate let img: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = true
        return iv
    }()
    fileprivate let closeBtn: UIButton = {
        let button = UIButton(type: .custom)
        let image = UIImage(named: "ic_close")?.withRenderingMode(.alwaysTemplate)
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(closeBtnTapped), for: .touchUpInside)
        return button
        
        
    }()
    fileprivate let countlbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.textAlignment = .center
        return lbl
          
      }()
      
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        setupView()
        setupConstraint()
        loadImage()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    func setupView(){
        view.backgroundColor = .black

        scrollerView.delegate = self as! UIScrollViewDelegate
        view.addSubview(scrollerView)
        scrollerView.addSubview(img)
        view.addSubview(countlbl)
        view.addSubview(closeBtn)
            
    }
    func setupConstraint(){
        scrollerView.frame = view.bounds
        img.frame = scrollerView.bounds
        
        countlbl.frame = CGRect(x: 20, y: view.frame.height - 50, width: view.frame.width - 40, height: 21)
        closeBtn.frame = CGRect(x: 20, y: (self.navigationController?.navigationBar.frame.size.height)!, width: 25, height: 25)
    }
    
    func loadImage(){
        img.image = imageArr[selectIndex].image
        countlbl.text = String(format: "%1d / %1d", selectIndex + 1, imageArr.count)
    }
    @objc func closeBtnTapped(){
        
    }
}
