//
//  processingViewController.swift
//  ImagePicker
//
//  Created by KentarOu on 2015/12/01.
//  Copyright © 2015年 KentarOu. All rights reserved.
//

import UIKit

class processingViewController: UIViewController{
    
    var mySelectedImage: UIImage!

    // UIImagePickerControllerで取得した画像を表示する
    @IBOutlet var mainImageView: UIImageView!
    
    //スタンプ画像を配置するUIViewインスタンス
    @IBOutlet var canvasView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setImage() {
        mainImageView.image = mySelectedImage
       // self.view.addSubview(mainImageView)
    }
    
    
}


