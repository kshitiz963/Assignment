//
//  ViewController.swift
//  Light
//
//  Created by Kshitiz on 27/07/25.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    @IBOutlet var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        
        if lightOn {
            view.backgroundColor = .white
        }else{
            view.backgroundColor = .black
        }
    }
    
}

