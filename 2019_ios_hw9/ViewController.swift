//
//  ViewController.swift
//  2019_ios_hw9
//
//  Created by User11 on 2019/5/22.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        for pageView in scrollView.subviews {
            if pageView.isKind(of: UIView.self){
                return pageView
            }
        }
        return nil
    }


}

