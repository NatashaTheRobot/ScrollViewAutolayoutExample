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
        let scrollViewBounds = self.scrollView.bounds
        let containerViewBounds = self.contentView.bounds
        
        var scrollViewInsets = UIEdgeInsetsZero
        scrollViewInsets.top = scrollViewBounds.size.height/2.0;
        scrollViewInsets.top -= self.contentView.bounds.size.height/2.0;
        
        scrollViewInsets.bottom = scrollViewBounds.size.height/2.0
        scrollViewInsets.bottom -= self.contentView.bounds.size.height/2.0;
        scrollViewInsets.bottom += 1
        
        self.scrollView.contentInset = scrollViewInsets
    }


}

