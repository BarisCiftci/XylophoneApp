//
//  ViewController.swift
//  XylophoneApp
//
//  Created by Baris Ciftci on 03/06/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func keyCPressed(_ sender: UIButton) {
        
        playSound(soundName: (sender.titleLabel?.text!)!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
}

