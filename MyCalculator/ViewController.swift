//
//  ViewController.swift
//  MyCalculator
//
//  Created by くりすせいま on 2020/10/12.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ラベルのプロパティ宣言
    @IBOutlet weak var calculationResultLabel: UILabel!
    
    //整数の値を保持するプロパティ
    var number1: Int = 0
    
    //小数の値を保持するプロパティ
    var number2: Double = 0
    
    //計算元の値を保持するプロパティ
    var number3: Int = 0
    
    //演算子が押された時に数字を付与するプロパティ
    var operatorNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //文字数に合わせてラベルに収まるようにする
        calculationResultLabel.adjustsFontSizeToFitWidth = true
    }
    
    //入力した数字をラベルに表示させる
    @IBAction func DidNumberTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            number1 = number1 * 10 + 0
            calculationResultLabel.text = String(number1)
        case 1:
            number1 = number1 * 10 + 1
            calculationResultLabel.text = String(number1)
        case 2:
            number1 = number1 * 10 + 2
            calculationResultLabel.text = String(number1)
        case 3:
            number1 = number1 * 10 + 3
            calculationResultLabel.text = String(number1)
        case 4:
            number1 = number1 * 10 + 4
            calculationResultLabel.text = String(number1)
        case 5:
            number1 = number1 * 10 + 5
            calculationResultLabel.text = String(number1)
        case 6:
            number1 = number1 * 10 + 6
            calculationResultLabel.text = String(number1)
        case 7:
            number1 = number1 * 10 + 7
            calculationResultLabel.text = String(number1)
        case 8:
            number1 = number1 * 10 + 8
            calculationResultLabel.text = String(number1)
        case 9:
            number1 = number1 * 10 + 9
            calculationResultLabel.text = String(number1)
        default:
            return
        }
    }

    //+ボタンを押した時の処理
    @IBAction func DidPlusButton(_ sender: UIButton) {
        number3 = number1
        number1 = 0
        operatorNumber = 1
    }
    
    //-ボタンを押した時の処理
    @IBAction func DidMinusButton(_ sender: UIButton) {
        number3 = number1
        number1 = 0
        operatorNumber = 2
    }
    
    //×ボタンを押した時の処理
    @IBAction func DidTimesButton(_ sender: UIButton) {
        number3 = number1
        number1 = 0
        operatorNumber = 3
    }
    
    //÷ボタンを押した時の処理
    @IBAction func DidDividedButton(_ sender: UIButton) {
        number3 = number1
        number1 = 0
        operatorNumber = 4
    }
    
    
    //=ボタンを押した時の処理
    @IBAction func DidEqualButton(_ sender: UIButton) {
        switch operatorNumber {
        case 1:
            number1 += number3
            calculationResultLabel.text = String(number1)
        case 2:
            number1 = number3 - number1
            calculationResultLabel.text = String(number1)
        case 3:
            number1 *= number3
            calculationResultLabel.text = String(number1)
        case 4:
            if number3 / number1 == 0 {
                number1 = number3 / number1
                calculationResultLabel.text = String(number1)
            } else {
                number2 = Double(number3) / Double(number1)
                calculationResultLabel.text = String(number2)
            }
        default:
            return
        }
    }
    
    //％ボタンを押した時の処理
    @IBAction func DidDivideOneHundredButton(_ sender: UIButton) {
        if number1 % 100 == 0 {
            number1 /= 100
            calculationResultLabel.text = String(number1)
        } else {
            number2 = Double(number1) * 0.01
            calculationResultLabel.text = String(number2)
        }
    }
    
    //+/-ボタンを押した時の処理
    
    
    //ACボタンを押した時に0にする
    @IBAction func DideraseButton(_ sender: Any) {
        number1 = Int(number2)
        number1 = 0
        calculationResultLabel.text = String(number1)
    }
}

