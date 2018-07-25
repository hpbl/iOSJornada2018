//
//  ViewController.swift
//  XcodeTutorial
//
//  Created by Hilton Pintor Bezerra Leite on 25/07/18.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var counter: Int = 0
    
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    
    // MARK: - Actions
    @IBAction func tapIncrementButton(_ sender: Any) {
        self.counter = self.counter + 1
        self.titleLabel.text = "Tocou \(self.counter) vezes"
    }
    
    // MARK: - Lyfe cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let currentDate = Date()
        self.titleLabel.text =  String(describing: currentDate)
//        self.view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

