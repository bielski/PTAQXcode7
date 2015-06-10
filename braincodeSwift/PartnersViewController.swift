//
//  PartnersViewController.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class PartnersViewController: UIViewController {
    
    @IBOutlet var cracow: UIImageView!
    @IBOutlet var poznan: UIImageView!
    
    var urlAddress = NSURL()
    var dict = [
        "cracow" : "http://testerzy.pl",
        "poznan" : "http://sjsi.org",
        ]
    
    @IBAction func openWebView(sender: UITapGestureRecognizer) {
        let url = dict[sender.view?.accessibilityLabel as String!]
        self.urlAddress = NSURL(string: url!)!
        let request = NSURLRequest(URL: self.urlAddress)
        
        let webViewController = self.storyboard?.instantiateViewControllerWithIdentifier("webView") as! WebViewController
        webViewController.urlRequest = request
        self.navigationController?.pushViewController(webViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpAccessiblityLabels()
    }
    
    func setUpAccessiblityLabels() {
        self.cracow.accessibilityLabel = "cracow"
        self.poznan.accessibilityLabel = "poznan"
    }
}