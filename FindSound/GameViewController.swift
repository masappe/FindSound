//
//  GameViewController.swift
//  FindSound
//
//  Created by Masato Hayakawa on 2019/11/22.
//  Copyright © 2019 masappe. All rights reserved.
//

import UIKit
import AVFoundation

class GameViewController: UIViewController {
    
    var ransu = 0
    var audioPlayer: AVAudioPlayer!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func soundButton(_ sender: Any) {
        let fileName = String(ransu)
        let path = Bundle.main.path(forResource: fileName, ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer.play()

    }
    
    @IBAction func nextButton(_ sender: Any) {
        ransu = Int.random(in: 1...7)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
