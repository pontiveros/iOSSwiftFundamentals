//
//  ViewController.swift
//  iOSSwiftFundamentals
//
//  Created by Pedro Ontiveros on 9/21/15.
//  Copyright © 2015 Pedro Ontiveros. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let identifierCell = "CellStatic"
    
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
            let alert = UIAlertController(title: "ERROR",
                                        message: "The \(key) functionality has not been implemented.",
                                preferredStyle: UIAlertControllerStyle.Alert)
            
            let action = UIAlertAction(title: "Accept", style: UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(action)
            self.presentViewController(alert, animated: true, completion: nil)
            
            print("Function not found")
        }
    }
    
    func openNetworkVC() {
        let vc = NetworkVC(nibName: "NetworkView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openMultithreading() {
        let vc = MultithreadVC(nibName: "MultithreadView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func openWebKit() {
        let vc = WebKitVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(self.identifierCell)
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: self.identifierCell)
        }
        
        let row = indexPath.row
        cell!.textLabel?.text = self.items.allKeys[row] as? String

        return cell!
    }
    
}

