//
//  DetailVC.swift
//  SehirRehberiTest
//
//  Created by paltimoz on 7/28/17.
//  Copyright © 2017 paltimoz. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var name = ""
    var img = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = img
        nameLbl.text = name
    }

}
