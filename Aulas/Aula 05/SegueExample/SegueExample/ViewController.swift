//
//  ViewController.swift
//  SegueExample
//
//  Created by Hilton Pintor Bezerra Leite on 26/07/18.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func unwindFromRed(segue: UIStoryboardSegue) {
        // fazer coisas depois de voltar da tela vermelha
    }

    @IBAction func tapChamaSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "toGreen", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let greenVc = segue.destination as? GreenViewController {
            // segue.destination é do tipo GreenViewController
            greenVc.receivedData = "Vim do vermelho"
        }
    }
}

