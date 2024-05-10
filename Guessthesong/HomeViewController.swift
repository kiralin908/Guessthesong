//
//  HomeViewController.swift
//  Guessthesong
//
//  Created by 林郁琦 on 2024/5/4.
//

import UIKit
import AVFoundation

class HomeViewController: UIViewController {
    
    //把需要設定的UI元件連結到IBOutlet
    @IBOutlet weak var startButton: UIButton!
    
    //創建一個AVPlayer實例來播放音樂
    var audioPlayer: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //設定Button圓角
        startButton.layer.cornerRadius = 20
        //設定讓Button圓角生效
        startButton.layer.masksToBounds = true
        playMusic()
    }
    
    func playMusic() {
        //檢查Bundle中是否存在名為"Music.m4a"的音樂檔案
        if let url = Bundle.main.url(forResource: "Music", withExtension: "m4a") {
            let playerItem = AVPlayerItem(url: url)
            audioPlayer = AVPlayer(playerItem: playerItem)
            audioPlayer?.play()
            } else {
                print("無法載入音樂")
            }
        }
    }
   
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    

