//
//  EventTableViewController.swift
//  EventListView
//
//  Created by student on 4/15/17.
//  Copyright © 2017 Aaron Pineda. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
    var eventsDS: EventDataSource?
    var cache: NSCache<AnyObject, AnyObject>!
    var downloadAssistant = Download(withURLString: "https://www.parsehub.com/api/v2/projects/tC49hLzyoPJP/last_ready_run/data?api_key=tzb0fTZ2GDaN")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cache = NSCache()
        downloadAssistant.addObserver(self, forKeyPath: "dataFromServer", options: .old, context: nil)
        downloadAssistant.download_request()
        title = "Events"
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print(downloadAssistant.dataFromServer!)
        let events = downloadAssistant.dataFromServer!["Events"]
        eventsDS = EventDataSource(dataSource: events as! [AnyObject])
        
        DispatchQueue.main.async(execute: {
            self.tableView.reloadData()
        })
    }
    
    deinit {
        downloadAssistant.removeObserver(self, forKeyPath: "dataFromServer", context: nil)
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let eds = eventsDS {
            
            return eds.numEvents()
        }
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath)

        if let theCell = cell as? EventTableViewCell, let event = eventsDS?.EventAt(indexPath.row){
            theCell.useEvent(event)
        }
        
        return cell
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "eventsToDetailedEvent"{
            let cell = sender as! EventTableViewCell
            if let indexPath = tableView.indexPath(for: cell), let ds = eventsDS{
                let detailedEventTVC = segue.destination as! DetailedEventViewController
                detailedEventTVC.eventForThisView(ds.EventAt(indexPath.row))
            }
        }
    }
    

}
