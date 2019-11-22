//
//  ViewController.swift
//  FindSound
//
//  Created by Masato Hayakawa on 2019/11/22.
//  Copyright © 2019 masappe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func StartButton(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGame" {
            let gameViewController = segue.destination as! GameViewController
            gameViewController.ransu = Int.random(in: 1...7)
        }
    }

}

