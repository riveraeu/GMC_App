//
//  DetailedEventViewController.swift
//  EventListView
//
//  Created by student on 4/19/17.
//  Copyright © 2017 Aaron Pineda. All rights reserved.
//

import UIKit

class DetailedEventViewController: UIViewController {
    var event: Event?
    @IBOutlet weak var detailedImage: UIImageView!
    @IBOutlet weak var detailedTitle: UILabel!
    @IBOutlet weak var detailedDescription: UITextView!
    @IBOutlet weak var detailedDateTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailedTitle.text = event?.getEventTitle()
        if let eImage = event?.getEventImage(){
            detailedImage.image = eImage
        }
        
        detailedDateTime.text = (event?.getEventDate())! + ", " + (event?.getEventTime())!
        detailedDescription.text = event?.getEventDescription()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func eventForThisView(_ event: Event){
        self.event = event
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
