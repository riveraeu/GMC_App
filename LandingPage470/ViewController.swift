//
//  ViewController.swift
//  LandingPage470
//
//  Created by student on 4/15/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var EventsScheduleButton: UIButton!
    @IBOutlet weak var AboutButton: UIButton!
    @IBOutlet weak var SlideViewImg1: UIImageView!
    
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var Pic1Scroll: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Initial Landing Page"
        //Banner Image:
        let imgURL = URL(string: "https://tickets.sonoma.edu/ArticleMedia/Images/Branding/gmc/gmc-logo.png")
        let data = try? Data(contentsOf: imgURL!)
        bannerImage.image = UIImage(data: data!)
        
        //Button labeling:
        EventsScheduleButton.setTitle("Events + Tickets", for: .normal)
        EventsScheduleButton.setTitleColor(UIColor.white, for: .normal)
        EventsScheduleButton.titleLabel!.font = UIFont(name: "Raleway", size: 22)
        
        AboutButton.setTitle("About", for: .normal)
        AboutButton.setTitleColor(UIColor.white, for: .normal)
        AboutButton.titleLabel!.font = UIFont(name: "Raleway", size: 22)
        
        
        //Button Color/Border:
        EventsScheduleButton.backgroundColor = UIColor(red: 175.0/255.0, green: 81.0/255.0, blue: 28.0/255.0, alpha: 1.0)
        EventsScheduleButton.layer.cornerRadius = 2
        EventsScheduleButton.layer.borderWidth = 1
        EventsScheduleButton.layer.borderColor = UIColor.black.cgColor
        
        AboutButton.backgroundColor = UIColor(red: 175.0/255.0, green: 81.0/255.0, blue: 28.0/255.0, alpha: 1.0)
        AboutButton.layer.cornerRadius = 2
        AboutButton.layer.borderWidth = 1
        AboutButton.layer.borderColor = UIColor.black.cgColor
        
        
        
        //Scroll View
        
        
        
        //1
        self.ScrollView.frame = CGRect(x:0, y:270, width:self.view.frame.width, height:self.view.frame.height)
        let scrollViewWidth:CGFloat = self.ScrollView.frame.width
        let scrollViewHeight:CGFloat = self.ScrollView.frame.height
        
        //2
        //textView.textAlignment = .center
        //textView.text = "Sweettutos.com is your blog of choice for Mobile tutorials"
        //textView.textColor = .black()
        //self.startButton.layer.cornerRadius = 4.0
        
        //3
        let imgOne = UIImageView(frame: CGRect(x:0, y:270,width:scrollViewWidth, height:200))
        imgOne.image = UIImage(named: "Image")
        let imgTwo = UIImageView(frame: CGRect(x: scrollViewWidth, y:270,width:scrollViewWidth, height: 200))
        imgTwo.image = UIImage(named: "Image2")
        let imgThree = UIImageView(frame: CGRect(x:scrollViewWidth*2, y:270,width:scrollViewWidth, height: 200))
        imgThree.image = UIImage(named: "Image3")
        //let imgFour = UIImageView(frame: CGRect(x:scrollViewWidth*3, y:270,width:scrollViewWidth, height:scrollViewHeight))
        //imgFour.image = UIImage(named: "Icon")
        
        self.ScrollView.addSubview(imgOne)
        self.ScrollView.addSubview(imgTwo)
        self.ScrollView.addSubview(imgThree)
        //self.ScrollView.addSubview(imgFour)
        //4
        self.ScrollView.contentSize = CGSize(width:self.ScrollView.frame.width * 3, height:self.ScrollView.frame.height)
        self.ScrollView.delegate = self
        
  
        
        
    }
    
    
    
    
}

