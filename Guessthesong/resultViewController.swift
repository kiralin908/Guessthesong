//
//  resultViewController.swift
//  Guessthesong
//
//  Created by 林郁琦 on 2024/5/5.
//

import UIKit

class resultViewController: UIViewController {
    
    //把需要設定的UI元件連結到IBOutlet
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    //宣告之後會設定到的變數
    var totalScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showScore()
        //設定resetButton圓角
        resetButton.layer.cornerRadius = 20
        resetButton.layer.masksToBounds = true
    }
    //設定顯示總分
    func showScore() {
        //將總分轉換為字串後顯示在scoreLabel上
        scoreLabel.text = String(totalScore)
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
