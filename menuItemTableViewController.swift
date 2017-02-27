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
    
    @IBOutlet weak var menuImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = ["Instructions for Writing", "Information", "Barachah Request etc"]
        self.view.backgroundColor = UIColor.yellow
        
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MenuTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! menuTableViewCell
        let item = items[indexPath.row]
        cell.menuItem.textAlignment = .center
        cell.layer.borderWidth = 0.5
        cell.menuItem.text = item
        cell.backgroundColor = UIColor.yellow
        return cell
    }
    
    // MARK: - Navigation

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            //first one
            self.performSegue(withIdentifier: "Instruction", sender: self)
        }
        else if indexPath.row == 1
        {
            //second one
            self.performSegue(withIdentifier: "Information", sender: self)
        }
        else if indexPath.row == 2
        {
            //third
            self.performSegue(withIdentifier: "Request", sender: self)
        }
    }
    
    override var shouldAutorotate : Bool {
        return false
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
}
