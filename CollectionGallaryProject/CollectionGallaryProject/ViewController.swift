//
//  ViewController.swift
//  CollectionGallaryProject
//
//  Created by Brahmastra on 11/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit


struct MyCustomData {
    var image = UIImage()
}

class ViewController: UIViewController {
    
    
    
   fileprivate let data = [
    MyCustomData(image: Image.f0),
     MyCustomData(image: Image.f1),
      MyCustomData(image: Image.f2),
       MyCustomData(image: Image.f3),
        MyCustomData(image: Image.f4),
         MyCustomData(image: Image.frontA),
          MyCustomData(image: Image.frontB),
           MyCustomData(image: Image.frontC),
            MyCustomData(image: Image.frontD),
             MyCustomData(image: Image.frontF),
              MyCustomData(image: Image.frontG),
               MyCustomData(image: Image.frontH),
                MyCustomData(image: Image.frontI),
                 MyCustomData(image: Image.frontJ),
                  MyCustomData(image: Image.frontK),
                   MyCustomData(image: Image.frontL),
    
    ]
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(MyCustomCell.self, forCellWithReuseIdentifier: "cell")
        cv.backgroundColor = .white
        return cv
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "GALLERY"
        
        setupView()
        setupConstriant()
    }

    func setupView(){
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func setupConstriant(){
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
         collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
         collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
         collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
}

extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate,
UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count   }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!
            MyCustomCell
        cell.backgroundColor = .white
        
        
        
        cell.data = data[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var Width: CGFloat = collectionView.frame.width/4 - 1
        
        if UIDevice.current.orientation.isLandscape {
            Width = collectionView.frame.width/6 - 1
            
        }
        
        
        return CGSize(width: Width, height: Width)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = ImageVC()
        vc.selectIndex = indexPath.row
        vc.imageArr = data
        pushView(viewController: vc)
    }
}
