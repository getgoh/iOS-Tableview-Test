//
//  CustomCell.swift
//  TableViewTest
//
//  Created by Al Roben Adriane P. Goh on 22/09/2017.
//  Copyright © 2017 Chrysalis. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    let img : UIImageView = {
        let i = UIImageView()
        i.translatesAutoresizingMaskIntoConstraints = false
        i.layer.cornerRadius = 24
        i.clipsToBounds = true
        return i
    }()
    
    let txt : UILabel = {
        let t = UILabel()
        t.translatesAutoresizingMaskIntoConstraints = false
        return t
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    func setupViews()
    {
        addSubview(img)
        addSubview(txt)
        
        img.widthAnchor.constraint(equalToConstant: 48).isActive = true
        img.heightAnchor.constraint(equalToConstant: 48).isActive = true
        img.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        
        txt.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -64).isActive = true
        txt.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        txt.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
