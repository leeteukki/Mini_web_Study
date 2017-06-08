//
//  ViewController.swift
//  Mini_web_Study
//
//  Created by tk's macbook on 2017. 6. 8..
//  Copyright © 2017년 tk's macbook. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate {

    @IBOutlet weak var bannerView: GADBannerView!
    
    @IBOutlet weak var bookMarkSegmentCountrol: UISegmentedControl!
    
    @IBOutlet weak var urlTextField: UITextField!
    
    @IBOutlet weak var miniWebVIew: UIWebView!
    
    @IBOutlet weak var spiningActive: UIActivityIndicatorView!
    
    
   
    
    
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkUrl = bookMarkSegmentCountrol.titleForSegment(at: bookMarkSegmentCountrol.selectedSegmentIndex)
        let urlString = "https://www.\(bookMarkUrl!).com"
        miniWebVIew.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("https//") {
            urlString = "http://\(urlTextField.text!)"
        }
        miniWebVIew.loadRequest(URLRequest(url: URL(string: urlString)!))
        textField.resignFirstResponder()
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://www.facebook.com"
        miniWebVIew.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
       
        
        
        
        // 구글배너
        print("Google Mobile Ads SDK version: " + GADRequest.sdkVersion())
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        spiningActive.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        spiningActive.stopAnimating()
    
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

