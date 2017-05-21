//
//  ViewController3.swift
//  NavigationControllerEx
//
//  Created by 윤민섭 on 2017. 5. 20..
//  Copyright © 2017년 윤민섭. All rights reserved.
//

import UIKit

class TableViewExample: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        naviInit()
        tableInit()
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
        
    }
    
    func tableInit(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableInit(frame: CGRect(x:0,y:0,width:375,height:667), tableCell: TableViewCell_Example.self, identifier: "cell", target: self)
    }
    
    func backButtonAction(){
        self.navigationController?.popVC(animated: true)
    }

}

extension TableViewExample{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell_Example
        cell.label.text = "1"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}

extension UITableView{
    open func tableInit(frame: CGRect,tableCell: AnyClass, identifier: String,target: UIViewController){
        self.frame = frame
        self.register(tableCell, forCellReuseIdentifier: identifier)
        target.view.addSubview(self)
    }
    
}
