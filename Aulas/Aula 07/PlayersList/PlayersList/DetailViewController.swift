//
//  DetailViewController.swift
//  PlayersList
//
//  Created by Hilton Pintor Bezerra Leite on 30/07/2018.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var playerNameTextField: UITextField!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var playerNameLabel: UILabel!
    
    var player: Player?
    
    @IBAction func tapSave(_ sender: Any) {
        guard let newName = self.playerNameTextField.text else {
            print("preencha o campo")
            return
        }
        
        
        self.player?.name = newName
        
        
        self.performSegue(withIdentifier: "unwindFromDetails", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.playerImageView.image = self.player?.imagem
        self.playerNameLabel.text = self.player?.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
