//
//  ViewController.swift
//  Lab2Calculator
//
//  Created by Issa Gabrielle Bonicillo on 21/5/18.
//  Copyright © 2018 Issa Gabrielle Bonicillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var X: UILabel!
    @IBOutlet weak var Y: UILabel!
    
    
    @IBOutlet weak var XVal: UITextField!
    
    @IBOutlet weak var YVal: UITextField!
    
  
    @IBOutlet weak var Result: UILabel!
    
    @IBOutlet weak var History: UILabel!
    
    @IBAction func cal(_ sender: UIButton) {
        
        var value : Double  = 0;
        switch sender.tag {
        case 0 :
            value = Double(XVal.text!)! + Double(YVal.text!)!
        
        default :
          print ("error")
        }
        
        print(value)
        
        
        Result.text = "Result:" + "\n  \(value)"
        History.text = History.text! + "\n "
        History.text = History.text! + (XVal.text!) + " + " + (YVal.text!)
        History.text = History.text! + " = " + "\(value)"
        
        print(Result.text)
        print(History.text)
    }
    
    @IBAction func calSub(_ sender: UIButton) {
        var value : Double  = 0;
        switch sender.tag {
        case 0 :
            value = Double(XVal.text!)! - Double(YVal.text!)!
            
        default :
            print ("error")
        }
        
        print(value)
        
        
        Result.text = "Result:" + "\n  \(value)"
        History.text = History.text! + "\n "
        History.text = History.text! + (XVal.text!) + " - " + (YVal.text!)
        History.text = History.text! + " = " + "\(value)"
        
        print(Result.text)
        print(History.text)
        
    }
    
    
    @IBAction func calMul(_ sender: UIButton) {
        
        var value : Double  = 0;
        switch sender.tag {
        case 0 :
            value = Double(XVal.text!)! * Double(YVal.text!)!
            
        default :
            print ("error")
        }
        
        print(value)
        
        
        Result.text = "Result:" + "\n  \(value)"
        History.text = History.text! + "\n "
        History.text = History.text! + (XVal.text!) + " * " + (YVal.text!)
        History.text = History.text! + " = " + "\(value)"
        
        print(Result.text)
        print(History.text)
    }
    
    @IBAction func calDiv(_ sender: UIButton) {
        
        var value : Double  = 0;
        switch sender.tag {
        case 0 :
            value = Double(XVal.text!)! / Double(YVal.text!)!
            
        default :
            print ("error")
        }
        
        print(value)
        
        
        Result.text = "Result:" + "\n  \(value)"
        History.text = History.text! + "\n "
        History.text = History.text! + (XVal.text!) + " / " + (YVal.text!)
        History.text = History.text! + " = " + "\(value)"
        
        print(Result.text)
        print(History.text)
    }
    
}


