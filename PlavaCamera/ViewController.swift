//
//  ViewController.swift
//  PlavaCamera
//
//  Created by CLOUD901/Admin on 12/20/16.
//  Copyright © 2016 Njeri Cooper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
@IBAction func openCameraButton(sender: AnyObject) {
    weak var Camera: UIButton!
    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
        var imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.Camera;
        imagePicker.allowsEditing = false
        self.presentViewController(imagePicker, animated:
            true, completion: nil)
        }
    }

}

