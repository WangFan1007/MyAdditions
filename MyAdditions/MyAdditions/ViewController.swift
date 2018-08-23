//
//  ViewController.swift
//  MyAdditions
//
//  Created by FFine on 2018/8/23.
//  Copyright © 2018年 FFine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
        btn.setImage(#imageLiteral(resourceName: "magictrip-larg"), for: [])
        var heightLight = UIImage(named:"magictrip-larg")
//        heightLight = heightLight?.withTintColor(UIColor.red)
        heightLight = heightLight?.withHeadImg(#imageLiteral(resourceName: "best-fit"))
        btn.setImage(heightLight, for: .selected)
        view.addSubview(btn)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func clicked(btn:UIButton){
        btn.isSelected = true;
    }


}

