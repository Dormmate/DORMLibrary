//
//  ViewController5.swift
//  NavigationControllerEx
//
//  Created by 윤민섭 on 2017. 5. 20..
//  Copyright © 2017년 윤민섭. All rights reserved.
//

import UIKit

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
