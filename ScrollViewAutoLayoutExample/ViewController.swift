//
//  ViewController.swift
//  ScrollViewAutoLayoutExample
//
//  Created by Natasha Murashev on 6/10/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var scrollView : UIScrollView
    @IBOutlet var contentView : UIView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidLayoutSubviews()
    {
        let scrollViewBounds = scrollView.bounds
        let contentViewBounds = contentView.bounds
        
        var scrollViewInsets = UIEdgeInsetsZero
        scrollViewInsets.top = scrollViewBounds.size.height/2.0;
        scrollViewInsets.top -= contentViewBounds.size.height/2.0;
        
        scrollViewInsets.bottom = scrollViewBounds.size.height/2.0
        scrollViewInsets.bottom -= contentViewBounds.size.height/2.0;
        scrollViewInsets.bottom += 1
        
        scrollView.contentInset = scrollViewInsets
    }


}

