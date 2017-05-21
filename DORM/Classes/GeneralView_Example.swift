//
//  ViewController2.swift
//  NavigationControllerEx
//
//  Created by 윤민섭 on 2017. 5. 20..
//  Copyright © 2017년 윤민섭. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    public var id : Int?
    let label = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        naviInit()
        viewInit()
        if let id = self.id {
            label.text = "\(id)"
        }
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func naviInit(){
        self.navigationController?.setTitle(title: "PracticeNavi", target: self)
        self.navigationController?.setLeftItem(image: UIImage(named:"gotoleft")!,tintColor: UIColor.black,target:self,action: #selector(backButtonAction))
    }
    
    func viewInit(){
        self.label.frame = CGRect(x: 50, y: 200, width: 50, height: 50)
        self.label.textColor = UIColor.black
        self.view.addSubview(label)

        button.frame = CGRect(x: 127.5, y: 300, width: 100, height: 50)
        button.setTitle("next page", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(nextPageBtn), for: .touchUpInside)
        self.view.addSubview(button)

    }
    
    func nextPageBtn(){
        let tableViewEx = TableViewExample()
        self.navigationController?.pushVC(tableViewEx, animated: true)
    }
    
    func backButtonAction(){
        self.navigationController?.popVC(animated: true)
    }
}
