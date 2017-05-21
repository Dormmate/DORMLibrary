//
//  TableViewCell.swift
//  NavigationControllerEx
//
//  Created by 윤민섭 on 2017. 5. 20..
//  Copyright © 2017년 윤민섭. All rights reserved.
//

import UIKit

class TableViewCell_Example: UITableViewCell {

    let label = UILabel()
    let label2 = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

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
