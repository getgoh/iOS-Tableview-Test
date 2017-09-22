//
//  TableViewController.swift
//  TableViewTest
//
//  Created by Al Roben Adriane P. Goh on 22/09/2017.
//  Copyright © 2017 Chrysalis. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let leftCellId = "LeftImageCell"
    let rightCellId = "RightImageCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(LeftImageCell.self, forCellReuseIdentifier: leftCellId)
        tableView.register(RightImageCell.self, forCellReuseIdentifier: rightCellId)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : CustomCell?
        
        if indexPath.row%2 == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: leftCellId, for: indexPath) as! LeftImageCell
            cell?.img.image = #imageLiteral(resourceName: "mrbean2")
            cell?.txt.text = "Left image cell"
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: rightCellId, for: indexPath) as! RightImageCell
            cell?.img.image = #imageLiteral(resourceName: "mrbean")
            cell?.txt.text = "Right image cell"
        }        
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }

}

class LeftImageCell : CustomCell {
    
    override func setupViews() {
        super.setupViews()
        
        img.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        txt.leftAnchor.constraint(equalTo: img.rightAnchor, constant: 8).isActive = true
    }
    
}

class RightImageCell : CustomCell {
    
    override func setupViews() {
        super.setupViews()
        
        img.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        txt.textAlignment = .right
        txt.rightAnchor.constraint(equalTo: img.leftAnchor, constant: -8).isActive = true
    }
}



