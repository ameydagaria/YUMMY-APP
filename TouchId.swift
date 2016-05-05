//
//  TouchId.swift
//  yummyDesserts2
//
//  Created by Amey on 05/05/16.
//  Copyright © 2016 The Code Lady. All rights reserved.
//



import Foundation

import UIKit
import LocalAuthentication


class TouchId: UIViewController {
    @IBAction func button(sender: AnyObject) {
        Touchid()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
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
            
        }}
        


}
