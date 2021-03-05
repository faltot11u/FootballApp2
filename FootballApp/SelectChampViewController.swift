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
    
    var codeChamp: Int = 0
    
    @IBAction func champChanged(_ sender: Any) {
        changeImgChamp()
    }
    
    
    private func changeImgChamp(){
        champSelected.loadGif(asset: "\(getChamp())")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueCodeChampionnat"){
            if let destination = segue.destination as? ListeClubsChampViewController {
                destination.codeChamp = self.codeChamp
            }
        }
    }
    
    
    private func getChamp()-> String{
        switch champSegmentControl.selectedSegmentIndex{
            case 0:
                codeChamp = 2015
                return "Ligue1"
            case 1:
                codeChamp = 2002
                return "Bundesliga"
            case 2:
                codeChamp = 2014
                return "Liga"
            case 3:
                codeChamp = 2019
                return "SerieA"
            case 4:
                codeChamp = 2021
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
        performSegue(withIdentifier: "segueCodeChampionnat", sender: nil)
       
        
    }
    
    
    
    
    
}
