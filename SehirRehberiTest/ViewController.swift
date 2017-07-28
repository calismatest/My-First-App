//
//  ViewController.swift
//  SehirRehberiTest
//
//  Created by paltimoz on 7/28/17.
//  Copyright © 2017 paltimoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    var cityName = [String]()
    var image = [UIImage]()
    
    
    var selectedName = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
        cityName.append("Deniliz")
        cityName.append("İstanbul")
        cityName.append("İzmir")
        cityName.append("Ankara")
        
        
        image.append(#imageLiteral(resourceName: "denizli"))
        image.append(#imageLiteral(resourceName: "istanbul"))
        image.append(#imageLiteral(resourceName: "izmir"))
        image.append(#imageLiteral(resourceName: "ankara"))
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailVC" {
            
            
            let des = segue.destination as! DetailVC
            
            des.name = selectedName
            des.img = selectedImage
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = cityName[indexPath.row]
        selectedImage = image[indexPath.row]
        
        performSegue(withIdentifier: "DetailVC", sender: nil)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = cityName[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            cityName.remove(at: indexPath.row)
            image.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }
    


}

