//
//  SelectChampViewController.swift
//  FootballApp
//
//  Created by Lilian Gonzalez on 05/03/2021.
//


import UIKit
import SwiftGifOrigin




class SelectChampViewController: UIViewController {
    
    @IBOutlet weak var champSelected: UIImageView!
    
    @IBOutlet weak var champSegmentControl: UISegmentedControl!
    @IBOutlet weak var validate: UIButton!
    
   
    
    @IBAction func champChanged(_ sender: Any) {
        changeImgChamp()
    }
    
    
    private func changeImgChamp(){
        champSelected.loadGif(asset: "\(getChamp())")
    }
    
    
    
    private func getChamp()-> String{
        switch champSegmentControl.selectedSegmentIndex{
            case 0:
                return "Ligue1"
            case 1:
                return "Bundesliga"
            case 2:
                return "Liga"
            case 3:
                return "SerieA"
            case 4:
                return "BPL"
            default:
                return ""
        }
    }
    
    
    override func viewDidLoad() {
        //champSelected.loadGif(asset: "Ligue1")
        super.viewDidLoad()
        changeImgChamp()
       
        
    }
    
    
    @IBAction func loadChamp(_ sender: Any) {
        
        
    }
    
    
    
    
    
}
