//
//  EventTableViewCell.swift
//  EventListView
//
//  Created by student on 4/15/17.
//  Copyright © 2017 Aaron Pineda. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func useEvent(_ event: Event) {
        if let eImage = event.getEventImage(){
            cellImage.image = eImage
        }
        cellLabel.text = (event.getEventDate())! + "\n" + (event.getEventTitle())!
    }
}
