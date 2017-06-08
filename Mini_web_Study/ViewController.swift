//
//  ViewController.swift
//  Mini_web_Study
//
//  Created by tk's macbook on 2017. 6. 8..
//  Copyright © 2017년 tk's macbook. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    
    @IBOutlet weak var bookMarkSegmentCountrol: UISegmentedControl!
    
    @IBOutlet weak var urlTextField: UITextField!
    
    @IBOutlet weak var miniWebVIew: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 구글배너
        print("Google Mobile Ads SDK version: " + GADRequest.sdkVersion())
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

