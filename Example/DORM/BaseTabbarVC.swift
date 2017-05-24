//
//  BaseTabbarVC.swift
//  DORM
//
//  Created by Dormmate on 2017. 5. 4..
//  Copyright © 2017 Dormmate. All rights reserved.
//

import UIKit
import DORM

class BaseTabbarVC: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        naviInit()
        tabInit()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 탭바에서의 네비게이션 바를 초기화 한다.
    // Initialize navigation bar in tabbar
    
    func naviInit(){
        self.setTitle(title: "PracticeNavi", target: self)
        //self.setLeftItem(image: UIImage(named:"gotoleft")!,tintColor: UIColor.black,target:self,action: #selector(backButtonAction))
    }
    
    // 탭바를 초기화한다.
    // Initialize tabbar
    
    func tabInit(){
        self.changeTabColor(color: UIColor.white)
        self.changeTabItemColor(color: UIColor.black)
        let firstView = TabbarItem_Example()
        let secondView = TabbarItem_Example2()
        self.setTabbarItem(view: firstView, title: "첫번째 화면", image: nil, tag: 0)
        self.setTabbarItem(view: secondView, title: "두번째 화면", image: nil, tag: 1)
        self.addTabbarItem(views: firstView, secondView)
    }

    func backButtonAction(){
        self.navigationController?.popVC(animated: true)
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0{
            //self.setLeftItem(image: UIImage(named:"gotoleft")!,tintColor: UIColor.black,target:self,action: #selector(backButtonAction))
        }else{
            //self.setLeftItem(image: UIImage(named:"btnLock")!,tintColor: UIColor.black,target:self,action: #selector(backButtonAction))
        }
    }

    
}


