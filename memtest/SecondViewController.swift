//
//  SecondViewController.swift
//  memtest
//
//  Created by Jason on 16/06/2017.
//  Copyright © 2017 Jason. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var jbswitch:Bool = true

    @IBOutlet weak var background: UIImageView!
    
    
    @IBAction func buttonTwoPressed(_ sender: Any) {
        
        if jbswitch {
            jbswitch = false
            background.image = UIImage(named: "patternB")
        } else {
            jbswitch = true
            background.removeFromSuperview()
            background = nil
            
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
    
        print("button called")
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    deinit {
        print("deinit called")
       
    }


}
