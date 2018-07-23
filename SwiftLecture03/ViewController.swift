//
//  ViewController.swift
//  SwiftLecture03
//
//  Created by stu1 on 2018/7/22.
//  Copyright © 2018年 tripim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbname1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var touchview: UIView!
    
    
    
    @IBAction func btuConfimClicked(_ sender: Any) {
        lbname1.text = "hello"
        
        let button = sender as! UIButton ;
        
        button.setTitle("ok",for:UIControlState.normal)
      
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesbegan")
        if let touch = touches.first{
            let loc = touch.location(in:self.touchview)
            
            print(" \(loc)")
        
            
        if(self.touchview.bounds.contains(loc)){
                self.touchview.backgroundColor = UIColor.red ;
            }
            else {
            
                self.touchview.backgroundColor =  UIColor.blue ;
            }
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       print("end")
    }
    
    
    @IBOutlet weak var switchStatus: UISwitch!
    @IBOutlet weak var slide01: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    
  
    @IBAction func swtichChanged(_ sender: Any) {
        print("switchChanged")
        
    }
    
    @IBAction func adjustScore(_ sender: Any) {
        //slide01.value = 20
        //stepper.value =
       // slide01.value = slide01.value+1
        slide01.value = Float(stepper.value)
        print("\(stepper.value)")
    }
    
}


