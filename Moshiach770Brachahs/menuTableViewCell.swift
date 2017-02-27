//
//  menuTableViewCell.swift
//  Moshiach770Brachahs
//
//  Created by Shmuel Dlinn on 8/4/16.
//  Copyright © 2016 Shmuel Dlinn. All rights reserved.
//

import UIKit

class menuTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var menuItem: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
