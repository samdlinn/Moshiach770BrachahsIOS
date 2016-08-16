//
//  MenuViewController.swift
//  Moshiach770Brachahs
//
//  Created by Shmuel Dlinn on 8/16/16.
//  Copyright © 2016 Shmuel Dlinn. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.edgesForExtendedLayout = UIRectEdge.None;
        self.view.backgroundColor = UIColor.yellowColor()
        
        menuImage.image = UIImage(named: "main_menu_770.jpg")
        
        imageLabel.text = "Moshiach 770 Brachahs"
        imageLabel.textColor = UIColor.whiteColor()
        imageLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 16.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
