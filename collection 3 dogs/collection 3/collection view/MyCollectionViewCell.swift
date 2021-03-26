//
//  MyCollectionViewCell.swift
//  collection 3
//
//  Created by Mahmoud on 12/2/20.
//  Copyright © 2020 mahmoud. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet var myLabel : UILabel!
    @IBOutlet var myImageView : UIImageView!
    
   static let  identifier = "MyCollectionViewCell"
    static func nib()->UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    func configure(with model : Model ){
        self.myLabel.text=model.text
        self.myImageView.image=UIImage(named: model.imageName)
    }

}
