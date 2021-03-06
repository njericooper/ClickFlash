//
//  ViewController.swift
//  PlavaCamera
//
//  Created by Njeri Cooper on 12/20/16.
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
    @IBOutlet weak var imagePicked: UIImageView!
    @IBAction func openCameraButton(sender: AnyObject) {
        weak var Camera: UIButton!
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated:
                true, completion: nil)
        }
    }

}

