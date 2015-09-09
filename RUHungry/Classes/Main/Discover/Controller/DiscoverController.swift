//
//  DiscoverController.swift
//  RUHungry
//
//  Created by shoule on 15/9/7.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit


class DiscoverController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initControls()
    }
    
    func initControls(){
        self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 0, 0)
    }
}
