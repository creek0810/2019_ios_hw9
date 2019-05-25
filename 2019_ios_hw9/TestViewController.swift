//
//  ImageViewController.swift
//  iOSUIScrollViewZoom
//
//  Created by Anupam Chugh on 16/07/18.
//  Copyright © 2018 JournalDev. All rights reserved.
//

import UIKit

class TestViewController : UIViewController, UIScrollViewDelegate{
    
    
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet var scrollViewCollection: [UIScrollView]!
    @IBOutlet var imageViewCollection: [UIImageView]!
    var curPage = 0
    

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        curPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = curPage
        if curPage + 1 < 7{
            scrollViewCollection[curPage + 1].zoomScale = 1.0
        }
        if curPage - 1 >= 0 {
            scrollViewCollection[curPage - 1].zoomScale = 1.0
        }
    }
    
    override func viewDidLoad() {
        for scrollView in scrollViewCollection {
            scrollView.backgroundColor = UIColor.black
            scrollView.contentOffset = CGPoint(x: 500, y: 1200)
            
            scrollView.delegate = self
            scrollView.minimumZoomScale = 0.5
            scrollView.maximumZoomScale = 3.0
            scrollView.zoomScale = 1.0
        }
        mainScrollView.delegate = self
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageViewCollection[curPage]
    }
    
    
}
