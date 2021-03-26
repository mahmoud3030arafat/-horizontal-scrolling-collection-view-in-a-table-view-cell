//
//  ViewController.swift
//  collection 3
//
//  Created by Mahmoud on 12/2/20.
//  Copyright © 2020 mahmoud. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet var tableview : UITableView!
    var models  = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        models.append(Model(text: "first", imageName: "image_1"))
        models.append(Model(text: "second", imageName: "image_2"))
        models.append(Model(text: "third ", imageName: "image_3"))
      
        tableview.delegate=self
        tableview.dataSource=self
        
        tableview.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)



    }
    // table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300.0
    }
    

}


