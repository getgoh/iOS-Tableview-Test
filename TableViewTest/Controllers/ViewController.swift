//
//  ViewController.swift
//  TableViewTest
//
//  Created by Al Roben Adriane P. Goh on 22/09/2017.
//  Copyright © 2017 Chrysalis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tvController = TableViewController()
        self.present(tvController, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

