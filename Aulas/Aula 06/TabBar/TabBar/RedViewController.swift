//
//  RedViewController.swift
//  TabBar
//
//  Created by Hilton Pintor Bezerra Leite on 28/07/17.
//  Copyright © 2017 hpbl. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.tabBarItem = UITabBarItem(title: "Fire", image: #imageLiteral(resourceName: "fire"), tag: 2)
        //self.tabBarItem.title = "Fire"
        //self.tabBarItem.image = #imageLiteral(resourceName: "fire")
        self.tabBarItem.badgeValue = "😱"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //self.tabBarItem = UITabBarItem(title: "Fire", image: #imageLiteral(resourceName: "fire"), tag: 2)
    }
}
