//
//  PickImageHelper.swift
//  iOSSwiftFundamentals
//
//  Created by Pedro Ontiveros on 9/22/15.
//  Copyright © 2015 Pedro Ontiveros. All rights reserved.
//

import UIKit

class PickerImageHelper: NSObject {

    var hostViewController: UIViewController
    var position: CGPoint
    
    convenience init(viewController: UIViewController) {
        self.init(viewController: viewController, point: CGPointMake(0, 0))
    }
    
    init(viewController: UIViewController, point: CGPoint) {
        self.hostViewController = viewController
        self.position = point
    }
    
    func selectImageWithCompletionHandler() {
        self.selectImageByAlertController()
    }
    
    private func selectImageByAlertController() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        let      openCamera = UIAlertAction(title: "Open Camera", style: UIAlertActionStyle.Default, handler: nil)
        let     openLibrary = UIAlertAction(title: "Open Library", style: UIAlertActionStyle.Default, handler: nil)
        
        alertController.addAction(openCamera)
        alertController.addAction(openLibrary)
        
        self.hostViewController.presentViewController(alertController, animated: true, completion: nil)
        
    }
}
