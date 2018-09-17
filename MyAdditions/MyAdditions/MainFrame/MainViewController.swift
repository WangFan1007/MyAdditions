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
        
//        print(1)
/////线程死锁
//        DispatchQueue.main.async {
//            print(2)
//        }
//        print(3)
        setupChildViewControllers()
        
        roundImg()
        
        testProgressView()
    }
}


// MARK: - 测试方法
extension MainViewController{
    func roundImg() {
        let img = #imageLiteral(resourceName: "测试图片")
        let imgView = UIImageView(image:img.circle())
        imgView.frame = CGRect(x: 40, y: 40, width: 100, height: 100)
        view.addSubview(imgView)
    }
}

extension MainViewController{
    func testProgressView() {
        let pv = WFProgressView()
        pv.frame = CGRect(x: 70, y: 300, width: 200, height: 140)
        pv.setTitle("100%", for: .normal)
        pv.progress = 0.5
        view.addSubview(pv)
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { (_) in
            pv.progress += 0.1
        })
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

