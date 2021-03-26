//
//  CollectionTableViewCell.swift
//  collection 3
//
//  Created by Mahmoud on 12/2/20.
//  Copyright © 2020 mahmoud. All rights reserved.
//

import UIKit

class CollectionTableViewCell: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

  @IBOutlet var collectionView :UICollectionView!
    var  model  = [Model]()
    static let identifier = "CollectionTableViewCell"
    static func nib()->UINib{
        return UINib(nibName: "CollectionTableViewCell", bundle: nil)
    }
    public func configure(with model : [Model]){
        self.model=model
        collectionView.reloadData()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate=self
        collectionView.dataSource=self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    // collection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3   }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        cell.configure(with: model[indexPath.row])
        return cell
        
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//           return CGSize(width: 250.0, height: 250.0)
//       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 300)
    }
    
    
}
