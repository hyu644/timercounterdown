//
//  ViewController.swift
//  TimerCountDown(191212)
//
//  Created by hyu on 12/12/1 R.
//  Copyright © 1 Reiwa hyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var attackButton: UIButton!
    
    var count = 0
    var timer = Timer()
    var timeCounter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startTimer()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goNext"){
            let nextView = segue.destination as! SecondViewController
            nextView.count = count
        }
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeStamp), userInfo: nil, repeats: true)
        
    }
    
    @objc func timeStamp(){
        timeCounter = timeCounter + 1
            print(timeCounter)
        if(timeCounter == 10){
            timer.invalidate()
        performSegue(withIdentifier: "goNext", sender: nil)
        
        }
    }
    
    @IBAction func attackAction(_ sender: UIButton) {
        
        count = count + 1
        print(count)
    }


}

