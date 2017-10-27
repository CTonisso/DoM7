//
//  Column.swift
//  FreestyleWithViews
//
//  Created by Rafael Prado on 27/10/17.
//  Copyright © 2017 DoM7. All rights reserved.
//

import UIKit

class Column: UIStackView {
    
    // Image name constants
    let greenIcon = UIImage(named: "green")
    let redIcon = UIImage(named: "red")
    
    // Array holds current state of the column
    var buttonArray = [false,false,false,false,false,false,false,false,false,false]
    
    
    @IBAction func buttonTap(_ sender: UIButton) {
        let index = sender.tag
        let currentState = self.buttonArray[index]
        
        sender.setImage((!currentState ? greenIcon:redIcon), for: .normal)
        self.buttonArray[index] = !currentState
        
        print(self.buttonArray)
    }
}
