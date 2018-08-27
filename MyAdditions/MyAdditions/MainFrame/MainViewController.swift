//
//  MianViewController.swift
//  MyAdditions
//
//  Created by FFine on 2018/8/24.
//  Copyright © 2018年 FFine. All rights reserved.
//

import UIKit

/// Mian View controller for Customize tabbar, and as main app's RootViewController.
class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildViewControllers()
    }
}


// MARK: - setup childViewControllers
extension MainViewController{
    
    func setupChildViewControllers() {
        let datas = [[
                "name":"Trips",
                "icon":#imageLiteral(resourceName: "tab_trip")
            ],
            [
                "name":"Fuel",
                "icon":#imageLiteral(resourceName: "tab_gas")
            ],
            [
                "name":"Transactions",
                "icon":#imageLiteral(resourceName: "tab_expense")
            ],
            [
                "name":"Reports",
                "icon":#imageLiteral(resourceName: "tab_report")
            ]
        ];
        for i in 0..<4{
            let  data = datas[i]
            
            let vc = TestViewController()
            vc.tabBarItem = UITabBarItem(title: data["name"] as? String, image: data["icon"] as? UIImage, selectedImage: nil)
            addChildViewController(vc)
        }
    }
    
    
}

