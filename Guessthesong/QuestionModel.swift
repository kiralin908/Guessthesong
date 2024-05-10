//
//  LyricsQuestion.swift
//  Guessthesong
//
//  Created by 林郁琦 on 2024/5/3.
//

import Foundation

//定義問題結構
struct Question {
    var question: String
    var select:[String]
    var answer: String
}

var questionsArray:[Question] = [
    //每個元素都是一個問題結構，包含問題文字、選項陣列、正確答案
    Question(question: "海風吹著你的歌聲，吹著你的頭髮", select: ["晚安台灣","海上的人","島嶼天光"], answer: "海上的人"),
    Question(question: "就只求下手盡量能輕一些", select: ["無情的情書","莫忘初衷","我很好騙"], answer: "我很好騙"),
    Question(question: "生而為人無罪，你不需要抱歉", select: ["玫瑰少年","愛的羅曼死","你也有今天"], answer: "玫瑰少年"),
    Question(question: "當我和世界不一樣，那就讓我不一樣", select: ["倔強","知足","愛情的模樣"], answer: "倔強"),
    Question(question: "我終於捨得放手讓你尋找下一段的旅程", select: ["凡人","我沒資格","外人"], answer: "外人"),
    Question(question: "你說藍色是你最愛的顏色", select: ["永不失聯的愛","怎麼了","如果雨之後"], answer: "怎麼了"),
    Question(question: "有一天，咱都老，帶某子逗陣", select: ["浪子的路","浪子回頭","日常"], answer: "浪子回頭"),
    Question(question: "我的靈魂二十一公克，因為妳而完整了完美了", select: ["自以為我以為","不屑","地球上最浪漫的一首歌"], answer: "地球上最浪漫的一首歌"),
    Question(question: "為愛付出瘋狂，為夢受一點傷", select: ["轉身之後","勢在必行","我還想念你"], answer: "勢在必行"),
    Question(question: "天涼了，雨下了，妳走了，清楚了，我愛的，遺失了", select: ["說了再見","說好的幸福呢","明明就"], answer: "說了再見"),
    Question(question: "我需要你，需要你，需要你陪伴我", select: ["幾分之幾","魚仔","愛情怎麼了嗎"], answer: "魚仔"),
    Question(question: "開始的傾心交談淪為平淡，望眼欲穿等不到你的晚安", select: ["太陽","我會等","與我無關"], answer: "與我無關"),
    Question(question: "就放心去吧，祝你幸福和快樂，自由的飛", select: ["怎麼說我不愛你","好想對你說","只能想念你"], answer: "只能想念你"),
    Question(question: "只有妳懂得我，就像被困住的野獸", select: ["說謊","想自由","傻子"], answer: "想自由"),
    Question(question: "等不到天黑，煙火不會太完美", select: ["她說","修煉愛情","學不會"], answer: "她說"),
    Question(question: "會不會，你也一樣等待著那句，我願意", select: ["最好的結局","想見你想見你想見你","我怎麼哭了"], answer: "想見你想見你想見你" ),
    Question(question: "天上風箏在天上飛，地上人兒在地上追", select: ["無與倫比的美麗","我好想你","喜歡寂寞"], answer: "無與倫比的美麗"),
    Question(question: "我嫉妒你的愛氣勢如虹", select: ["心洞","再愛一遍","天后"], answer: "天后"),
    Question(question: "最後一支煙，我就欲來離開", select: ["就讓我遠走","愛我你會死","想你點煙"], answer: "愛我你會死"),
    Question(question: "這樣太危險，飛太遠", select: ["迷途羔羊","FLY OUT","Just Believe"], answer: "FLY OUT"),
    ]
