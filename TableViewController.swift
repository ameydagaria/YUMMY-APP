//
//  TableViewController.swift
//  
//
//  Created by Amey Dagaria on 2/05/16.


import UIKit
import LocalAuthentication


class TableViewController: UITableViewController {
    
    var WordArray:[Word] = [Word]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Touchid()
        

        let Word1 = Word(imageName: "abberant.png", description: "ABBERANT", moreInfo: "Meaning :- Departing from an accepted standard .                                Synonymous:- Anomalous,Delirious      " )
        let Word2 = Word(imageName: "abide.png", description: "ABIDE", moreInfo: "accept or act in accordance with (a rule, decision, or recommendation).")
        let Word3 = Word(imageName: "abjure.png", description: "ABJURE", moreInfo: "solemnly renounce (a belief, cause, or claim)." )
        let Word4 = Word(imageName: "acclaim.png", description: "ACCLAIM", moreInfo: "praise enthusiastically and publicly.." )
        let Word5 = Word(imageName: "acquaint.png", description: "ACQUAINT", moreInfo: "make someone aware of or familiar with." )
        
        
        
        
        WordArray.append(Word1)
        WordArray.append(Word2)
        WordArray.append(Word3)
        WordArray.append(Word4)
        WordArray.append(Word5)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return WordArray.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! myCell

        let foodItem = WordArray[indexPath.row]
        
        cell.myImageView.image = UIImage(named: foodItem.imageName)
        cell.myLabel.text = foodItem.description
        
        return cell
        
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
        let wordSelected = WordArray[indexPath.row]
        let detailVC:DetailViewcontroller = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewcontroller
        
        detailVC.imageDetail = wordSelected.imageName
        detailVC.descriptionLabel = wordSelected.description
        detailVC.moreInfoDetail = wordSelected.moreInfo
        
        self.presentViewController(detailVC, animated: true, completion: nil)
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
