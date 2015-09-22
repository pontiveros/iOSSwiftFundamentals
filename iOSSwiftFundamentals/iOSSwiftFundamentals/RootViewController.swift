//
//  ViewController.swift
//  iOSSwiftFundamentals
//
//  Created by Pedro Ontiveros on 9/21/15.
//  Copyright © 2015 Pedro Ontiveros. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let items : NSDictionary = ["Networking" : "openNetworkVC",
                                  "UIWebKit" : "openWebKit",
                             "Files And I/O" : "openFilesAndIO",
                            "Multithreading" : "openMultithreading",
                   "UIViews and Transitions" : "openViewAndTransitions",
                          "Core Data Sample" : "openCoreDataSample"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "iOS Swift Fundamentals"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let key   = self.items.allKeys[indexPath.row] as? String
        let value : String = (self.items.objectForKey(key!) as? String)!
        let performFunction = NSSelectorFromString(value)
        
        if (self.respondsToSelector(performFunction)) {
            self.performSelector(performFunction)
        } else {
            print("Function not found")
        }
    }
    
    func openNetworkVC() {
        let vc = NetworkVC(nibName: "NetworkView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("didSelectRowAtIndexPath")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "CellStatic"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier)
        }
        
        let row = indexPath.row
        cell!.textLabel?.text = self.items.allKeys[row] as? String

        return cell!
    }
    
}

