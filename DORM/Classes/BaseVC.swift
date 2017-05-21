//
//  BaseVC.swift
//  NavigationControllerEx
//
//  Created by 윤민섭 on 2017. 5. 20..
//  Copyright © 2017년 윤민섭. All rights reserved.
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
        //첫번째 화면
        self.pushVC(viewController, animated: false)
    }
    

}



extension UINavigationController{
    
    open func pushVC(_ viewController: UIViewController, animated: Bool){
        self.pushViewController(viewController, animated: animated)
        viewController.view.backgroundColor = UIColor.white
    }
    
    open func popVC(animated: Bool){
        self.popViewController(animated: animated)
    }
    
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
        self.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: font, size: size)!]
    }
    
    open func hideNavigationBar(){
        self.isNavigationBarHidden = true
    }
    
    open func revealNavigationBar(){
        self.isNavigationBarHidden = false
    }
}
