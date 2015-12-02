//
//  ViewController.swift
//  ImagePicker
//
//  Created by KentarOu on 2015/12/01.
//  Copyright © 2015年 KentarOu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIAlertViewDelegate {
    
    var myImagePicker: UIImagePickerController!
    var myImageView: UIImageView!
    
    var mainImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func libraryTapped(sender: AnyObject) {
        myImageView = UIImageView()
        myImagePicker = UIImagePickerController()
        myImagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        myImagePicker.delegate = self
        self.presentViewController(myImagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let myImage:AnyObject? = info[UIImagePickerControllerOriginalImage]
        
        
        dismissViewControllerAnimated(true) { () -> Void in
            
            // Storyboard取得(Mainの場合)
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            //  Storyboard IDを指定してViewControllerを取得
            let secondViewController = storyboard.instantiateViewControllerWithIdentifier("processing") as! processingViewController
            secondViewController.mySelectedImage = myImage as! UIImage
            self.navigationController!.pushViewController(secondViewController, animated: true)
        }
    }
}








