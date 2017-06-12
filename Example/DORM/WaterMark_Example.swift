//
//  WaterMark_Example.swift
//  DORM
//
//  Created by Dormmate on 2017. 5. 4..
//  Copyright © 2017 Dormmate. All rights reserved.
//

import UIKit
import DORM

class WaterMark_Example: UIViewController {
    
    
    var imageView = UIImageView()
    var changeBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.rcenter(y: 200, width: 300, height: 250, targetWidth: 375)
        imageView.image = UIImage(named:"planet")
        
        changeBtn.rframe(x: 200, y: 50, width: 100, height: 100)
        changeBtn.layer.borderWidth = 2
        changeBtn.setButton(title: "WaterMarking", targetController: self, action: #selector(executeAction), fontSize: 12, color: UIColor.black, self.view)
        
        view.addSubview(imageView)

    }
    
    func executeAction(){
    
        WaterMarkUtil.sharedUtil.waterMarking(targetView: imageView, waterMarkImage: UIImage(named:"watermark-1")!) { (result) in
            imageView.image = result
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
