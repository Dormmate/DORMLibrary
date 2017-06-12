//
//  InstagramManager_Example.swift
//  DORM
//
//  Created by Dormmate on 2017. 5. 4..
//  Copyright © 2017 Dormmate. All rights reserved.
//

import UIKit
import DORM

class InstagramManager_Example: UIViewController {

    var instaImageView = UIImageView()
    var iImage = UIImage(named:"instaImg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        instaImageView.rframe(x: 245, y: 309, width: 32, height: 32)
        
        instaImageView.image = UIImage(named:"instaImg")
        
        let instagram = UITapGestureRecognizer(target:self, action:#selector(instaAction1))
        instaImageView.isUserInteractionEnabled = true
        instaImageView.addGestureRecognizer(instagram)
        
        
        view.addSubview(instaImageView)

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func instaAction1(){
        
        //If you want to post by copying item
        InstagramManager.sharedManager.postImageToInstagramWithCaption(imageInstagram: iImage!, instagramCaption: "caption", view: self.view)
    
    }
    
    func instaAction2(){
    
        //If you want to save in photoalbum and use photo in instagram
        InstagramManager.sharedManager.sendImageDirectlyToInstagram(image: iImage!)
        
        UIImageWriteToSavedPhotosAlbum(iImage!, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
        
    }
    
    
    func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        
        InstagramManager.sharedManager.sendImageDirectlyToInstagram(image: image)
        
    }
    


}
