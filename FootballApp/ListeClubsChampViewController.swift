//
//  ListeClubsChampViewController.swift
//  FootballApp
//
//  Created by Loic Faltot on 05/03/2021.
//


import Alamofire
import UIKit

class ListeClubsChampViewController: UITableViewController {
    
    
    var squads:[Squad] = []
    
    func listBeer(){
       /* AF.request("https://api.punkapi.com/v2/beers").response { response in

            let json = try! JSON(data: response.data!)

            let jsonArray = json.arrayValue

            for beer in jsonArray {
                self.beers.append(Beer(Name: beer["name"].stringValue, Degree: beer["abv"].stringValue, Description: beer["description"].stringValue, PictureUrl: beer["image_url"].stringValue))

            }
            self.tableView.reloadData()

        }*/
    }
}
