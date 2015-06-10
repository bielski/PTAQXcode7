//
//  WebViewController.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    var urlRequest: NSURLRequest!

    override func viewWillAppear(animated: Bool) {
        self.webView.loadRequest(self.urlRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView.accessibilityLabel = "webView"
        self.navigationItem.backBarButtonItem?.accessibilityLabel = "Back"
    }
}
