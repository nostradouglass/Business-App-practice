//
//  SocialViewController.swift
//  Business App practice
//
//  Created by Kelly Douglass on 2/8/19.
//  Copyright © 2019 Kelly Douglass. All rights reserved.
//

import UIKit
import WebKit

class SocialViewController: UIViewController, WKNavigationDelegate {

    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    var sentData1:String!
    var sentData2: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = sentData1
        
        let url  = URL(string: sentData2)
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
        webView.addSubview(actInd)
        actInd.startAnimating()
        
        webView.navigationDelegate = self
        actInd.hidesWhenStopped = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func refresh(_ sender: Any) {
        webView.reload()
    }
    
    @IBAction func stop(_ sender: Any) {
        webView.stopLoading()
    }
    @IBAction func back(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBAction func forward(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        actInd.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        actInd.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        actInd.stopAnimating()
    }
    
    
}
