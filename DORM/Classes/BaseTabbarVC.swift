//
//  ViewController4.swift
//  NavigationControllerEx
//
//  Created by 윤민섭 on 2017. 5. 20..
//  Copyright © 2017년 윤민섭. All rights reserved.
//

import UIKit

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
    
    func naviInit(){
        // 탭바일때는 self.navigationController?.setTitle 이 아니라 밑에 처럼 한다.
        self.setTitle(title: "PracticeNavi", target: self)
        //self.setLeftItem(image: UIImage(named:"gotoleft")!,tintColor: UIColor.black,target:self,action: #selector(backButtonAction))
    }
    
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


extension UITabBarController{
    
    
    open func setLeftItem(image: UIImage, tintColor: UIColor, target: UIViewController, action :Selector){
        let leftMenuItem = UIBarButtonItem(image: image, style: .plain, target: target, action: action)
        leftMenuItem.tintColor = tintColor
        target.navigationItem.setLeftBarButton(leftMenuItem, animated: false)
    }
    
    open func setRightItem(image: UIImage, tintColor: UIColor, target: UIViewController, action :Selector){
        let rightMemuItem = UIBarButtonItem(image: image, style: .plain, target: target, action: action)
        rightMemuItem.tintColor = tintColor
        target.navigationItem.setRightBarButton(rightMemuItem, animated: false)
    }
    
    open func setTitle(title:String, target: UIViewController){
        target.title = title
    }
    
    open func setCustomTitle(font: String, size: CGFloat){
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: font, size: size)!]
    }

    open func changeTabColor(color: UIColor){
        UITabBar.appearance().barTintColor = color
    }
    
    open func changeTabItemColor(color: UIColor){
        UITabBar.appearance().tintColor = color
    }
    
    open func addTabbarItem(views: UIViewController...){
        var controllerArray = [UIViewController]()
        for viewControllers in views{
            controllerArray.append(viewControllers)
        }
        self.viewControllers = controllerArray
    }
    
    open func setTabbarItem(view: UIViewController,title: String?, image: UIImage?, tag: Int){
        let item = UITabBarItem(title: title, image: image, selectedImage: nil)
        item.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0) // 중앙정렬
        item.tag = tag
        view.tabBarItem = item
    }

}
