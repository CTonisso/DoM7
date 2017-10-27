//
//  ViewController.swift
//  FreestyleWithViews
//
//  Created by Rafael Prado on 26/10/17.
//  Copyright © 2017 DoM7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    let greenIcon = UIImage(named: "green")
    let redIcon = UIImage(named: "red")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttons[3].setImage(greenIcon, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTap(_ sender: UIButton) {
        let current = sender.imageView?.image
        sender.setImage((current == redIcon ? greenIcon:redIcon), for: .normal)
    }
    
}

