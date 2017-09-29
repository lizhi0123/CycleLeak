//
//  LeakController.swift
//  Cycle
//
//  Created by Sunny on 2017/9/29.
//  Copyright © 2017年 Sunny. All rights reserved.
//  简书： http://www.jianshu.com/u/2dc174d83679

import UIKit

class LeakController: UIViewController {

    @IBOutlet weak var leakImageView: LeakImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 循环引用 代码
        leakImageView.delegate = self  //注销 此句 代码 可以 执行deinit， 否则不执行deinit
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("释放 LeakController")
    }

}
