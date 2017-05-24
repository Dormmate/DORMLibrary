//
//  BaseVC.swift
//  DORM
//
//  Created by Dormmate on 2017. 5. 4..
//  Copyright © 2017 Dormmate. All rights reserved.
//

import UIKit

class BaseVC: UINavigationController {

    let viewController = BaseTabbarVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        baseInit()
        // Do any additional setup after loading the view.
    }

    fileprivate func baseInit(){
        // 첫번째 화면을 파라미터로 넣어준다.
        // Insert your first view into parameters
        self.pushVC(viewController, animated: false)
    }
    

}


