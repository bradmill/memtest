//
//  ViewController.swift
//  memtest
//
//  Created by Jason on 16/06/2017.
//  Copyright © 2017 Jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func buttonPressed(_ sender: Any) {
        
      performSegue(withIdentifier: "FirsttoSecond", sender: self)  
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let app = UIApplication.shared.delegate as? AppDelegate, let window = app.window {
            if let viewControllers = window.rootViewController?.childViewControllers {
                for viewController in viewControllers {
                    print(viewController.debugDescription)
                }
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

