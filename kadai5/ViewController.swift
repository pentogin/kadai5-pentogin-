//
//  ViewController.swift
//  kadai5
//
//  Created by 小竹啓太 on 2021/06/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textFiled1: UITextField!
    @IBOutlet private weak var textFiled2: UITextField!
    
    @IBOutlet private weak var resultLabel: UILabel!

    //アラートを作る
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "課題", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction private func calculateButton(_ sender: Any) {
        guard let text1 = textFiled1.text else { return }
        guard let text2 = textFiled2.text else { return }
        
        guard let leftNum = Double(text1) else {
            showAlert(message: "割られる数を入力してください")
            return
        }

        guard let rightNum = Double(text2) else {
            showAlert(message: "割る数を入力してください")
            return
        }

        guard rightNum != 0 else {
            showAlert(message: "割る数には０を入力しないで下さい！")
            return
        }

        let resultNum = leftNum / rightNum
        resultLabel.text = String(resultNum)
    }
}
