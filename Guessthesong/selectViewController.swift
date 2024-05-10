//
//  selectViewController.swift
//  Guessthesong
//
//  Created by 林郁琦 on 2024/5/4.
//

import UIKit

class selectViewController: UIViewController {
    
    //把需要設定的UI元件連結到IBOutlet
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var selectButton: [UIButton]!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    //宣告之後會設定到的變數
    var numOfQuestion = 0
    var index = 0
    var currentScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showQuestion()
        //設定Button圓角
        for button in selectButton {
            button.layer.cornerRadius = 20
            button.layer.masksToBounds = true
        }
        //設定answerLabel圓角
        answerLabel.layer.cornerRadius = 20
        answerLabel.layer.masksToBounds = true
        }
    //設定顯示問題及選項
    func showQuestion() {
        let question = questionsArray[index]
        questionLabel.text = question.question
        for i in 0...2 {
            selectButton[i].setTitle(String(question.select[i]), for: .normal)
        }
    }
    //使用IBSegueAction定義Segue，將分數傳遞給結果頁面
    @IBSegueAction func toResultViewController(_ coder: NSCoder) -> resultViewController? {
        let controller =  resultViewController(coder: coder)
        controller?.totalScore = currentScore
        return controller
    }
    //設定選擇答案後顯示文字
    @IBAction func selectAction(_ sender: UIButton) {
        let correctAnswer = questionsArray[index].answer
        if sender.currentTitle == String(correctAnswer){
            answerLabel.text = "You got it!!"
            currentScore += 10
        } else {
            answerLabel.text = "Try again"
        }
        //當按下selectButton之後，禁用所有選項按鈕
        for button in selectButton {
                button.isEnabled = false
            }
    }
    //設定顯示下一個問題
    @IBAction func nextButton(_ sender: UIButton) {
        if index <= 19 {
            index += 1
            print(index)
            numberLabel.text = "\(index + 1)"
            answerLabel.text = ""
            nextQuestion()
        }
    }
    //設定顯示下一個問題的內容
    func nextQuestion() {
        if index <= 19 {
            let question = questionsArray[index]
            questionLabel.text = question.question
            for i in 0...2 {
                selectButton[i].setTitle(String(question.select[i]), for: .normal)
            }
            for button in selectButton {
                button.isEnabled = true
            }
            } else if  index == 19 {
            let question = questionsArray[index]
            questionLabel.text = question.question
            for i in 0...2 {
                selectButton[i].setTitle(String(question.select[i]), for: .normal)
            }
            } else {
            //如果已經是最後一題，則執行Segue切換到結果頁面
            performSegue(withIdentifier: "toResultViewController", sender: nil)
        }
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    //執行Segue之前的準備工作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultViewController" {
            if let controller = segue.destination as? resultViewController {
                //傳遞分數給結果頁面
                controller.totalScore = currentScore + 10
            }
        }
    }
}
