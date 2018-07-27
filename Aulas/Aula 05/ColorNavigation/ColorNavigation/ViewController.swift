//
//  ViewController.swift
//  ColorNavigation
//
//  Created by Hilton Pintor Bezerra Leite on 26/07/18.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func unwindFromColor(segue: UIStoryboardSegue) {
        if let colorVC = segue.source as? ColorViewController {
            self.view.backgroundColor = colorVC.color
            self.titleLabel.text = colorVC.titleLabel.text
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorVC = segue.destination as? ColorViewController {
            colorVC.titleText = self.titleLabel.text
        }
    }
}

