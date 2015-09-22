//
//  ViewController.swift
//  iOSSwiftFundamentals
//
//  Created by Pedro Ontiveros on 9/21/15.
//  Copyright © 2015 Pedro Ontiveros. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let items : NSDictionary = {"Networking":"openNetworkVC", "UIWebKit":"openWebKit", "":"", "":"", "":"", "":""}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "iOS Swift Fundamentals"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        cell!.textLabel?.text = self.items[row]

        return cell!
    }
    
}

