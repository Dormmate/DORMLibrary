//
//  TabbarItem_Example2.swift
//  DORM
//
//  Created by Dormmate on 2017. 5. 4..
//  Copyright © 2017 Dormmate. All rights reserved.
//

import UIKit

// 탭바를 사용한다면 탭바 아이템으로 사용하는 뷰이다.
// If you use tabbar, it is view for tabbar item

class TabbarItem_Example2: UIViewController {
    
    public var id : Int?
    let label = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewInit()
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewInit(){
        self.label.frame = CGRect(x: 50, y: 200, width: 50, height: 50)
        self.label.textColor = UIColor.black
        self.view.addSubview(label)
        
        button.frame = CGRect(x: 127.5, y: 300, width: 100, height: 50)
        button.setTitle("next page", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(button)
        
    }
    
    func backButtonAction(){
        self.navigationController?.popVC(animated: true)
    }
}
