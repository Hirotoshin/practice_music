//
//  ViewController.swift
//  practice_musicApp
//
//  Created by 伊藤潤人 on 2017/11/27.
//  Copyright © 2017年 hirotoshin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func cymbal(_ sender: Any) {
        do{
        cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint:nil)
        cymbalPlayer.play()
        }catch{
            print("エラー：シンバル")
        }
    }
    
    @IBAction func guitar(_ sender: Any) {
        do {
            guitarPlayer = try AVAudioPlayer(contentsOf:guitarPath, fileTypeHint:nil)
            guitarPlayer.play()
        }catch{
            print("エラー：ギター")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("tw080.mp3")
    var cymbalPlayer = AVAudioPlayer()
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("tw069.mp3")
    var guitarPlayer = AVAudioPlayer()


}

