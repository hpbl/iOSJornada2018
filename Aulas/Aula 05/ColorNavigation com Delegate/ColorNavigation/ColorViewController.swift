//
//  ColorViewController.swift
//  ColorNavigation
//
//  Created by Hilton Pintor Bezerra Leite on 26/07/18.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    var color: UIColor?
    var titleText: String?
    var delegate: ColorVCDelegate!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func tapSaveButton(_ sender: Any) {
        /* mesmo de
        if self.color != nil {
            let chosenColor = self.color!
        }
        */
        
        if let chosenColor = self.color, let text = self.titleText {
            self.delegate.chosen(color: chosenColor, text: text)
        } else {
            print("ESCOLHA UMA COR")
        }
    }
    
    @IBAction func tapRedButton(_ sender: Any) {
        self.titleText = "Red"
        self.titleLabel.text = "Red"
        self.color = .red
    }
    
    @IBAction func tapBlackButton(_ sender: Any) {
        self.titleText = "Black"
        self.titleLabel.text = "Black"
        self.color = .black
    }
    
    @IBAction func tapGreenButton(_ sender: Any) {
        self.titleText = "Green"
        self.titleLabel.text = "Green"
        self.color = .green
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.titleLabel.text = self.titleText
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
