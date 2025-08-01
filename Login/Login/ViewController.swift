//
//  ViewController.swift
//  Login
//
//  Created by Kshitiz on 29/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    
    @IBOutlet var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }else{
            segue.destination.navigationItem.title = textField.text
        }
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        
    }
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: sender)
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: sender)
    }
}

