//
//  ViewController.swift
//  Snappettite-iOS
//
//  Created by Shotaro Ikeda on 3/29/16.
//  Copyright © 2016 Shotaro Ikeda. All rights reserved.
//

import UIKit
import MobileCoreServices
import AssetsLibrary

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIActionSheetDelegate {
    @IBOutlet weak var Camera: UIButton!
    @IBOutlet weak var History: UIButton!
    @IBOutlet weak var Settings: UIButton!
    @IBOutlet weak var Analysis: UIButton!
    
    @IBOutlet weak var ratingControl: RatingControl!
    
    @IBOutlet weak var img: UIImageView!
    @IBAction func selectImageAction(sender: AnyObject) {
        
        //sheet words
        let actionSheetController: UIAlertController = UIAlertController(title: "Please select...", message:nil, preferredStyle: .ActionSheet)
        
        //Cancel words
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in }
        actionSheetController.addAction(cancelAction)
        
        //Take a photo words
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Take a photo", style: .Default)
        {action -> Void in [self .initWithImagePickView("Take a photo")]}
        
        actionSheetController.addAction(takePictureAction)
        
        //To Album words
        let choosePictureAction: UIAlertAction = UIAlertAction(title: "To Album", style: .Default)
        {action -> Void in[self .initWithImagePickView("To Album")]}
        
        actionSheetController.addAction(choosePictureAction)
        
        self.presentViewController(actionSheetController, animated: true, completion: nil)
        }
    
    
    //pick an image
    var imagePicker : UIImagePickerController!
    func initWithImagePickView(type:NSString){
       
        
        self.imagePicker = UIImagePickerController()
        self.imagePicker.delegate      = self;
        self.imagePicker.allowsEditing = true;
        
        switch type{
        case "Take a photo":
            self.imagePicker.sourceType = .Camera
            break
        case "To Album":
            self.imagePicker.sourceType = .PhotoLibrary
            break
        default:
            print("error")
        }
        
        presentViewController(self.imagePicker, animated: true, completion: nil)
    }
    
    
    //show image in the right place
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        img.image = image
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
