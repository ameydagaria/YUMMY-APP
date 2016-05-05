//
//  Touch.swift
//  yummyDesserts2
//
//  Created by Amey on 03/05/16.
//  Copyright © 2016 Amey. All rights reserved.
//

import Foundation

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    @IBAction func auth(sender: AnyObject) {
        Touchid()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func Touchid(){
        let authcontext :LAContext = LAContext()
        var error :NSError?
        
        if authcontext.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &error)//it is testing wether we have touch id or not on device
        {
            authcontext.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "Welcome to Gre Panda ", reply: { (wassuccesful : Bool, error : NSError? )in // to check was succeful and if then what we want to do
                if wassuccesful {
                    //
                    NSLog("Welcome to Gre Panda")
                }
                else {
                    
                    NSLog("Try Again")
                }
            })
            
        }
        else {
            
        }
        
        
        
        
    }
    
    
}

