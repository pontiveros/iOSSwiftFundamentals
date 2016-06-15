//
//  SintaxVCViewController.swift
//  iOSSwiftFundamentals
//
//  Created by Pedro Ontiveros on 6/15/16.
//  Copyright © 2016 Pedro Ontiveros. All rights reserved.
//

import UIKit

class SyntaxVC: UIViewController {

    let tuple1 = ("Pedro Ontiveros", 41, 30.001)
    let tuple2 = (name: "Pedro Ontiveros", age:41, average:30.001)
    var flag1: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Syntax"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func getTuple3() -> (name: String, quantity: Int, price: Float)? {
        if (flag1) {
            return nil
        }
        return (name: "Screw", quantity: 400, price: 0.29)
    }

    @IBAction func onTouchTuples(sender: UIButton) {
        flag1 = !flag1
        // case 1
        let (name, age, _) = tuple1
        print(name)
        print(age)
        
        // case 2
        print(tuple2.name)
        print(tuple2.age)
        print(tuple2.average)
        
        // case 3: invoking a function
        if let tuple3 = getTuple3() {
            print("Name: \(tuple3.name)")
            print("Quantity: \(tuple3.quantity)")
            print("Price: \(tuple3.price)")
        }
    }
}
