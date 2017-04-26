//
//  ViewController.swift
//  WH_map
//
//  Created by Eugene Rivera on 4/24/17.
//  Copyright © 2017 Eugene Rivera. All rights reserved.
//

import UIKit

class WHviewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "WH_seating.jpg")
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        scrollView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?
    {
        return imageView
    }

}

