//
//  ViewController.swift
//  FootballApp
//
//  Created by Lilian Gonzalez on 04/03/2021.
//

import UIKit
import SwiftGifOrigin

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var imageBottomApp: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageBottomApp.loadGif(asset: "foot")
        logo.image = UIImage(named: "Logo")
    }


}

