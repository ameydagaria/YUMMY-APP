//
//  DetailViewcontroller.swift
//  yummyDesserts2
//
//  Created by Amey Dagaria


import UIKit

class DetailViewcontroller: UIViewController {

    @IBOutlet var detailImage: UIImageView!
    
    
    @IBOutlet var detailLabel: UILabel!
    
    
    @IBOutlet var moreInfoLabel: UILabel!
    
    
    var imageDetail = ""
    var descriptionLabel = ""
    var moreInfoDetail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImage.image = UIImage(named: imageDetail)
        detailLabel.text = descriptionLabel
        moreInfoLabel.text = moreInfoDetail

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
