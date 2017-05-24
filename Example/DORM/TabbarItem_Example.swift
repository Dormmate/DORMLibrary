//
//  TabbarItem_Example.swift
//  DORM
//
//  Created by Dormmate on 2017. 5. 4..
//  Copyright © 2017 Dormmate. All rights reserved.
//

import UIKit


// 탭바를 사용한다면 탭바 아이템으로 사용하는 뷰이다.
// If you use tabbar, it is view for tabbar item

class TabbarItem_Example: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func backButtonAction(){
        self.navigationController?.popVC(animated: true)
    }

}
