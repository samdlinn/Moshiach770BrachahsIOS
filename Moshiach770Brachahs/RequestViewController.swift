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
    @IBOutlet weak var paypalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        instructionTextView.text = "Write a letter to the Rebbe King Moshiach Shlita:\n(see instructions above)"
        instructionTextView.backgroundColor = UIColor.yellow
        messageTextView.text = "Write your letter here"
        messageTextView.layer.borderWidth = 1
        messageTextView.layer.cornerRadius = 5;
        messageTextView.clipsToBounds = true;
        //messageTextView.layer.borderColor = UIColor.blackColor().CGColor
        sendButton.setTitle("Send", for: UIControlState())
        paypalButton.setTitle("PayPal", for: UIControlState())
        
        self.view.backgroundColor = UIColor.yellow
        
        // Do any additional setup after loading the view.
    }

    // if the paypal button is tapped
    @IBAction func payPalButtonTapped(_ sender: AnyObject) {
        UIApplication.shared.openURL(URL(string: "https://www.paypal.me/LivingMoshiach")!)
    }
    
    @IBAction func sendButtonTapped(_ sender: AnyObject) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
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
        let alert = UIAlertController(title: "Could Not Send Email", message: "Your device could not send e-mail. Please check e-mail configuration and try again.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            // Put here any code that you would like to execute when
            // the user taps that OK button (may be empty in your case if that's just
            // an informative alert)
        }
        alert.addAction(action)
        self.present(alert, animated: true){}    }
    
    // Delegate method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
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
