//
//  WebKitVC.swift
//  iOSSwiftFundamentals
//
//  Created by Pedro Ontiveros on 9/21/15.
//  Copyright © 2015 Pedro Ontiveros. All rights reserved.
//

import UIKit
import WebKit

class WebKitVC: UIViewController, WKNavigationDelegate, WKUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "WebKit"
        
        let webView = WKWebView(frame: CGRectMake(0, 0, 0, 0))

        let url = NSURL(string: "http://www.intel.com")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
        webView.navigationDelegate = self
        self.view = webView
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

//    func webView(webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void) {
//        print("Message from WKWebView.")
//    }
    
    func webView(webView: WKWebView, createWebViewWithConfiguration configuration: WKWebViewConfiguration, forNavigationAction navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        return webView
    }
    
}
