//
//  LeakImageView.swift
//  Cycle
//
//  Created by Sunny on 2017/9/29.
//  Copyright © 2017年 Sunny. All rights reserved.
//  简书： http://www.jianshu.com/u/2dc174d83679

import UIKit

class LeakImageView: UIImageView {

    /// delegate 强引用 ，delegate 的实现方式就在此省去。
    var delegate : AnyObject? ;
    
    deinit {
        print("释放 leakImageView")
    }
    
}
