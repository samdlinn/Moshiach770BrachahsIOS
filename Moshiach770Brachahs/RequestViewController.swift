//
//  RequestViewController.swift
//  Moshiach770Brachahs
//
//  Created by Shmuel Dlinn on 8/11/16.
//  Copyright © 2016 Shmuel Dlinn. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class RequestViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var instructionTextView: UITextView!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var paypalButton: UIButton!
    @IBOutlet weak var paypalTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        instructionTextView.text = "Write a letter to the Rebbe King Moshiach Shlita:\n(see instructions above)"
        messageTextView.text = "Write your letter here"
        
        sendButton.setTitle("Send", forState: UIControlState.Normal)
        paypalButton.setTitle("PayPal", forState: UIControlState.Normal)
        
        paypalTextView.text = "Please Donate (Optional)"
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func sendButtonTapped(sender: AnyObject) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.presentViewController(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["Shmueld770@hotmail.com"])
        mailComposerVC.setSubject("Sending you an in-app e-mail")
        mailComposerVC.setMessageBody("Sending e-mail in-app is not so bad!", isHTML: false)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        let alert = UIAlertController(title: "Could Not Send Email", message: "Your device could not send e-mail. Please check e-mail configuration and try again.", preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default) { _ in
            // Put here any code that you would like to execute when
            // the user taps that OK button (may be empty in your case if that's just
            // an informative alert)
        }
        alert.addAction(action)
        self.presentViewController(alert, animated: true){}    }
    
    // Delegate method
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
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
