//
//  ViewController.swift
//  Counter
//
//  Created by Elina Shterengarts on 21.02.2024.
//

import UIKit

extension Date {
    var dateInFormat: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
        return dateFormatter.string(from: self)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var countValue: UILabel!
    @IBOutlet weak var changeHistory: UITextView!
   
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    
    private func roundCornerButtons(){
        buttonMinus.layer.cornerRadius = 15
        buttonPlus.layer.cornerRadius = 15
        buttonReset.layer.cornerRadius = 15
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countValue.text = "Значение счётчика: 0"
        changeHistory.text = "История изменений: " + "\n"
        roundCornerButtons()
    }
    
    private var count: Int = 0
    
    @IBAction func buttonTouchPlus() {
        count += 1
        countValue.text = "Значение счётчика: \(count)"
        changeHistory.text.append("[\(Date().dateInFormat)]: значение изменено на +1." + "\n")
    }
    
    @IBAction func buttonTouchMinus() {
        if count > 0 {
            count -= 1
            countValue.text = "Значение счётчика: \(count)"
            changeHistory.text.append("[\(Date().dateInFormat)]: значение изменено на -1." + "\n")
        } else {
            changeHistory.text.append("[\(Date().dateInFormat)]: попытка уменьшить значение счетчика ниже 0." + "\n")
        }
    }
    
    @IBAction func buttonTouchReset() {
        count = 0
        countValue.text = "Значение счётчика: \(count)"
        changeHistory.text.append("[\(Date().dateInFormat)]: значение сброшено." + "\n")
    }
    
}

