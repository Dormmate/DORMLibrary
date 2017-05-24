//
//  TableViewCell_Example.swift
//  DORM
//
//  Created by Dormmate on 2017. 5. 4..
//  Copyright © 2017 Dormmate. All rights reserved.
//

import UIKit

class TableViewCell_Example: UITableViewCell {

    let label = UILabel()
    let label2 = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // 테이블 셀의 초기화 방식이다. 테이블 셀에 들어갈 오브젝트들에 대한 위치를 설정해주고 추가해준다.
    // It is the initialization method of the table cell. setting the position of the objects in the table cell and add to contentview
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.label.frame = CGRect(x: 0, y: 0, width: 100, height: 20)
        self.label.textColor = UIColor.black
        self.contentView.addSubview(label)
        
        self.label2.frame = CGRect(x: 0, y: 120, width: 100,height: 20)
        self.label2.textColor = UIColor.black
        self.contentView.addSubview(label2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
