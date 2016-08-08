//
//  menuItemTableViewController.swift
//  Moshiach770Brachahs
//
//  Created by Shmuel Dlinn on 8/5/16.
//  Copyright © 2016 Shmuel Dlinn. All rights reserved.
//

import UIKit

class menuItemTableViewController: UITableViewController {

    //Mark: Properties
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = ["Instructions for Writing", "Information", "Barachah Request etc"]
        // used to make the table view before the status bar
        // self.tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
        // don't need because of navigation controller
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "MenuTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! menuTableViewCell
        let item = items[indexPath.row]
        cell.menuItem.text = item
        
        return cell
    }
    
    // MARK: - Navigation

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0
        {
            //first one
            self.performSegueWithIdentifier("Instruction", sender: self)
        }
        else if indexPath.row == 1
        {
            //second one
            self.performSegueWithIdentifier("Information", sender: self)
        }
        else if indexPath.row == 2
        {
            //third
            self.performSegueWithIdentifier("Request", sender: self)
        }
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    }
    

}
