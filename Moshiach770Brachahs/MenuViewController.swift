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
        
//        self.edgesForExtendedLayout = UIRectEdge();
        self.edgesForExtendedLayout = []
        self.view.backgroundColor = UIColor.yellow

        menuImage.image = UIImage(named: "main_menu_770.jpg")
        
        imageLabel.text = "Moshiach 770 Brachahs"
        imageLabel.textColor = UIColor.white
        imageLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 16.0)
    }

    override func viewDidLayoutSubviews() {
        // this didn't work...
        self.navigationController?.navigationBar.isTranslucent = false
//        self.edgesForExtendedLayout = []
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var shouldAutorotate : Bool {
        return false
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }

}
