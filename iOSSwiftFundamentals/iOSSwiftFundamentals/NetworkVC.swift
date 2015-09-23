//
//  NetworkVC.swift
//  iOSSwiftFundamentals
//
//  Created by Pedro Ontiveros on 9/21/15.
//  Copyright © 2015 Pedro Ontiveros. All rights reserved.
//

import UIKit

class NetworkVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Networking"
    }
    
    @IBAction func onTouchPing(sender: AnyObject) {
        let vc = UploadImageVC(nibName:"UploadImageView" , bundle:nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onTouchUploadImage(sender: AnyObject) {
        let picker = PickerImageHelper(viewController: self)
        picker.selectImageWithCompletionHandler()
    }
}
