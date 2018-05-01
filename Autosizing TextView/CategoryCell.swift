//
//  CategoryCell.swift
//  Autosizing TextView
//
//  Created by manoj Singireddy on 2/4/18.
//  Copyright © 2018 sample. All rights reserved.
//

import UIKit

class Category: UICollectionViewCell {
    
    private let cell2ID = "cell2ID"
    
    let appCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpCell() {
        addSubview(appCollection)
        appCollection.frame = self.bounds
        appCollection.delegate = self
        appCollection.dataSource = self
        appCollection.register(CategoryCell.self, forCellWithReuseIdentifier: cell2ID)
        appCollection.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
//        appCollection.backgroundColor = UIColor.red
        
    }
    
}

extension Category: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cell2ID, for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height)
    }

}

class CategoryCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupcell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupcell() {
        backgroundColor = UIColor.black
        
    }
}



























