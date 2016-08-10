//
//  InformationViewController.swift
//  Moshiach770Brachahs
//
//  Created by Shmuel Dlinn on 8/8/16.
//  Copyright © 2016 Shmuel Dlinn. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = "    When writing to the Rebbe King Moshiach Shlita include your Jewish Name and Mothers’s name (a non-Jew writes their father’s name) and likewise for all those you are requesting a blessing for (family name is not necessary). Good news is also something to write to the Rebbe King Moshiach Shlita and god resolutions to add in Torah and Mitzvos (especially Torah study about Moshiach and Tzedakah donations) which will add in receiving the blessing. Mainly accept the kingship of Moshiach by writing “Long Live the Rebbe King Moshiach forever) to his majesty. The best is to visit the Rebbe King Moshiach Shlita in person in 770 Eastern pkwy Brooklyn, New York at Sunday dollars etc. if this is not possible this app with get the letter to Moshiach.\n\n\nSample Letter:\n\n26th of Iyar 5776\n\nRebbe King Moshiach Shlita!\nWe are happy to notify your majesty that we have put up 25 Mezuzahs today on three different homes. One of the people Avraham ben Sarah, asked for a Berachah. We hope in this merit we will see the building of the Beis Hamikdosh now! Long live the Rebbe King Moshiach Forever!\nSincerely,\nNasan Ben Serach"
        textView.text = text
        textView.editable = false
        
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
