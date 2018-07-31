//
//  PlayerTableViewController.swift
//  PlayersList
//
//  Created by Hilton Pintor Bezerra Leite on 30/07/2018.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class PlayerTableViewController: UITableViewController {
    
    var players: [Player] = []
    var selectedPlayer: Player?
    
    func loadPlayers() {
        let diego = Player(name: "Diego", imagem: #imageLiteral(resourceName: "diego"))
        let magrao = Player(name: "Magrão", imagem: UIImage(named: "magrao")!)
        
        self.players.append(contentsOf: [diego, magrao])
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.loadPlayers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return self.players.count
    }

    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView
            .dequeueReusableCell(withIdentifier: "PlayerCell",
                                 for: indexPath)
            as? PlayerTableViewCell else {
                fatalError("Célula de tipo inesperado")
        }
        
        let currentPlayer = self.players[indexPath.row]
        cell.playerLabel.text = currentPlayer.name
        cell.playerImageView.image = currentPlayer.imagem

        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        self.selectedPlayer = self.players[indexPath.row]
        self.performSegue(withIdentifier: "toDetail", sender: nil)
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let detailVC = segue.destination as? DetailViewController {
            detailVC.player = self.selectedPlayer
        }
    }
    
    @IBAction func uwindFromDetails(segue: UIStoryboardSegue) {
        self.tableView.reloadData()
    }
}
