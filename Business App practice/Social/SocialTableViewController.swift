//
//  SocialTableViewController.swift
//  Business App practice
//
//  Created by Kelly Douglass on 2/8/19.
//  Copyright © 2019 Kelly Douglass. All rights reserved.
//

import UIKit

class SocialTableViewController: UITableViewController {

    
    var items = [[String:String]]()
    
    func loadPlist() -> [[String:String]] {
        let path = Bundle.main.path(forResource: "socialList", ofType: "plist")
        
        return NSArray.init(contentsOf: URL.init(fileURLWithPath: path!)) as! [[String:String]]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.items = loadPlist()
        
        self.tableView.rowHeight = 100
        tableView.backgroundView = UIImageView(image: UIImage(named: "Background"))
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationItem.title = "Social Links"
        self.navigationItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SocialTableViewCell

        // Configure the cell...
        let item = self.items[indexPath.row]
        
        cell.cellLabel.text = item["Title"]
        cell.cellImage.image = UIImage(named: item["Image"]!)
        cell.layer.cornerRadius = 5
        cell.cellImage.clipsToBounds = true

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showDetail" {
            
            let dvc = segue.destination as! SocialViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let item = self.items[indexPath.row]
                
                 dvc.sentData1 = item["Title"]
                dvc.sentData2 = item["Link"]
            }
            
        }
        
    }
 

}
