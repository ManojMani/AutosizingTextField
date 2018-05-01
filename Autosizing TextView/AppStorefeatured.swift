//
//  ViewController.swift
//  Autosizing TextView
//
//  Created by manoj Singireddy on 2/3/18.
//  Copyright © 2018 sample. All rights reserved.
//

import UIKit

class AppStorefeatured: UICollectionViewController {
    
   private let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        
        collectionView?.register(Category.self, forCellWithReuseIdentifier: cellID)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! Category
        
        return cell
    }
    
 
}

class Category: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpCell() {
        backgroundColor = UIColor.red
    }
    
}



