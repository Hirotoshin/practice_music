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
        soundPlayer(&cymbalPlayer, path: cymbalPath, count: 0)
    }
    
    @IBAction func guitar(_ sender: Any) {
        soundPlayer(&guitarPlayer, path: guitarPath, count: 0)
    }
    @IBAction func play(_ sender: Any) {
        soundPlayer(&backmusicPlayer, path: backmusicPath, count: -1)
    }
    
    @IBAction func stop(_ sender: Any) {
        backmusicPlayer.stop()
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

    
    
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("btn03.mp3")
    var backmusicPlayer = AVAudioPlayer()
    
    
    fileprivate func soundPlayer(_ player:inout AVAudioPlayer, path:URL, count:Int){
        do{
        player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
        player.numberOfLoops = count
        player.play()
    } catch {
        print("error")
        }
    }


    
}

