//
//  TableViewExample.swift
//  DORM
//
//  Created by Dormmate on 2017. 5. 4..
//  Copyright © 2017 Dormmate. All rights reserved.
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
    
    // 네비게이션 초기화를 해준다.
    // Initialize your navigation bar.
    
    
    func naviInit(){
        self.navigationController?.setTitle(title: "PracticeNavi", target: self)
        self.navigationController?.setLeftItem(image: UIImage(named:"gotoleft")!,tintColor: UIColor.black,target:self,action: #selector(backButtonAction))
    }
    
    func viewInit(){
        
    }
    
    // 테이블 뷰를 초기화 해준다. 테이블 뷰의 추가 기능을 사용하기 위해 delegate와 dataSource를 사용한다.
    // Initialize your table view. If you want to use additional function in tableview, use delegate and dataSource.
    
    func tableInit(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // 테이블 셀을 가져오기 위해선 셀을 만들고 보기와 같이 넣어준다.
        // To import a table cell, create a cell and insert it as a sample.
        
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
    
    // 테이블 뷰를 초기화 하는 함수이다. 테이블 뷰의 크기, 테이블 셀의 식별자, 그리고 테이블 뷰가 놓여질 타겟 뷰를 설정한다.
    // It is function for tableview initialization. Set table view size, cell identifier, and target view where the table view will be placed.
    
    open func tableInit(frame: CGRect,tableCell: AnyClass, identifier: String,target: UIViewController){
        self.frame = frame
        // 테이블 뷰의 함수로서 테이블 셀을 등록하는 것이다.
        // It is tableview function for register table cell.
        self.register(tableCell, forCellReuseIdentifier: identifier)
        target.view.addSubview(self)
    }
    
}
