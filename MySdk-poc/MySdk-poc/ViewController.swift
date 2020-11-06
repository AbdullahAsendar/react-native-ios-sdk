//
//  ViewController.swift
//  MySdk-poc
//
//  Created by Abdullah Asendar on 11/6/20.
//

import UIKit
import MySdk_native

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startReactNative(_ sender: Any) {
        
        let client = MySdkClient(Environment.DEBUG)
        let controller = UIViewController()
        controller.view = client.getView()
        present(controller, animated: true, completion: nil)
        
    }
    
}

