//
//  PostsTableViewController.swift
//  Tech Social Media App
//
//  Created by Kaylen Ward on 3/07/25.
//

import UIKit

class PostsTableViewController: UITableViewController {

    var posts: [Post] = [
        Post(title: "Running", caption: "🏃‍♀️‍➡️", date: "2/10/2025", user: "kaylen.ward"),
        Post(title: "Parachuting", caption: "🪂", date: "2/15/2025", user: "kaylen.ward", comments: ["Wow! That was amazing!", "Looks like you're having fun!"]),
        Post(title: "Swimming", caption: "🏊‍♀️", date: "2/20/2025", user: "kaylen.ward"),
        Post(title: "Basketball", caption: "⛹🏼‍♀️", date: "2/25/2025", user: "kaylen.ward"),
        Post(title: "Climbing", caption: "🧗🏻‍♀️", date: "3/1/2025", user: "kaylen.ward", comments: ["Where is that?", "I want to go!"]),
        Post(title: "Golfing", caption: "🏌🏻‍♀️", date: "3/5/2025", user: "kaylen.ward"),
        Post(title: "Biking", caption: "🚴🏻‍♀️", date: "3/10/2025", user: "kaylen.ward"),
        Post(title: "Weight Lifting", caption: "🏋🏻‍♀️", date: "3/15/2025", user: "kaylen.ward"),
        Post(title: "Dancing", caption: "💃🏻", date: "3/20/2025", user: "kaylen.ward"),
        Post(title: "Snowboarding", caption: "🏂", date: "3/25/2025", user: "kaylen.ward")
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return posts.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostsTableViewCell

        // Configure the cell...

        let post = posts[indexPath.row]
        cell.update(with: post)
        
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
