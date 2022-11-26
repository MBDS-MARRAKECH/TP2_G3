//
//  CountriesTableViewController.swift
//  TP2_G3
//
//  Created by user226371 on 11/26/22.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //var nbtot = countries.count
        var nb1 = 0
        var nb2 = 0
        var nb3 = 0
        var nb4 = 0
        var nb5 = 0
        var nbs = 0
       
        for i in 0 ... countries.count - 1
        {
            if (countries[i].continent == "Asie")
            {
                nb1 = 1
            }
            if (countries[i].continent == "Europe")
            {
                nb2 = 1
            }
            if (countries[i].continent == "Australia")
            {
                nb3 = 1
            }
            if (countries[i].continent == "Afrique")
            {
                nb4 = 1
            }
            if (countries[i].continent == "Amerique")
            {
                nb5 = 1
            }
            nbs = nb1 + nb2 + nb3 + nb4 + nb5
        }
        return nbs
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        let country = countries[indexPath.row]
        

        cell.textLabel?.text = country.name
        cell.detailTextLabel?.text = country.isoCode
        cell.imageView?.image = UIImage(named: country.isoCode)
           return cell    }
    
   
        
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
