//
//  InstructionViewController.swift
//  Moshiach770Brachahs
//
//  Created by Shmuel Dlinn on 8/9/16.
//  Copyright © 2016 Shmuel Dlinn. All rights reserved.
//

import UIKit

class InstructionViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        self.automaticallyAdjustsScrollViewInsets = false
        let text = "    An example of a Miracle through a blessing of the Rebbe King Moshiach Shlita: In 5770 (2010), A. severely injured his leg in an accident. He had an operation which was supposed to improve his condition, but it was unsuccessful. It was hard for him to walk, and he had constant, intense pain. His friend, a Chabad rabbi, offered to write to the Rebbe King Moshiach Shlita, requesting a blessing for his complete recovery. By Divine providence he came across a letter of the Rebbe King Moshiach Shlita which says that a Jew should never feel down, and ends by blessing him with numerous blessings. A few months later, the rabbi told A. that he was traveling to Brooklyn to see the Rebbe King Moshiach Shlita and could request a blessing from the Rebbe King Moshiach Shlita in person at dollars. A. told him to tell the Rebbe King Moshiach Shlita that if his leg would be healed, he would become a completely observant Jew. When the rabbi went to receive a dollar and blessing from the Rebbe King Moshiach Shlita, he requested a blessing for A. and added that A. had said that he would become completely observant if he would recover.\n\n\tThe rabbi returned from his trip. A while later A. told the rabbi that his situation was not improving. Later that day, the rabbi came across a holy letter of the Rebbe King Moshiach Shlita. It spoke about the fact that a Jew’s physical success is intricately connected with his performance of the Commandments. The letter goes on to say that just like it isn’t enough to believe that it is important to eat – one must actually eat in order to gain strength, so too it is not enough to believe in G–d and His Commandments – a Jew must actually perform the Commandments, and only then will things go well for him. At the end of the letter, the Rebbe King Moshiach Shlita guarantees that his physical matters will be successful if he will keep the Commandments, and is awaiting good news. As a result of this letter, A. began to strengthen his performance of the Commandments, including praying, putting on Tefillin and studying Torah regularly.\n\n\tA short while later, A.’s doctors decided to try the previously unsuccessful operation again. Because of A.’s efforts in performing the Commandments, this time the operation was completely successful! A. now walks normally and you cannot even tell that he ever had an accident!\n\nFor more information see https://www.LivingMoshiach.com"
        
        textLabel.text = text
        textLabel.isEditable = false
        //textLabel.dataDetectorTypes = UIDataDetectorTypes.All
        textLabel.backgroundColor = UIColor.yellow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.textLabel.setContentOffset(CGPoint.zero, animated: false)
    }

    override var shouldAutorotate : Bool {
        return false
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }

}
