//
//  SecondViewController.swift
//  TimerCountDown(191212)
//
//  Created by hyu on 12/12/1 R.
//  Copyright © 1 Reiwa hyu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var gameOverButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        gameOverButton.isHidden = true
        continueButton.isHidden = true
        
        if(count < 10){
            gameOverButton.isHidden = false
        }else{
            continueButton.isHidden = false
        }
}
    @IBAction func gameOverAction(_ sender: UIButton) {
    exit(0)
}
    
    @IBAction func continueAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
     
    }
}
