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
    
    
    @IBOutlet weak private var countLabel: UILabel!
    @IBOutlet weak private var historyTextView: UITextView!
    
    @IBOutlet weak private var minusButton: UIButton!
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var resetButton: UIButton!
    
    private func roundCornerButtons(){
        minusButton.layer.cornerRadius = 15
        plusButton.layer.cornerRadius = 15
        resetButton.layer.cornerRadius = 15
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "Значение счётчика: 0"
        historyTextView.text = "История изменений: " + "\n"
        roundCornerButtons()
    }
    
    private var count: Int = 0
    
    @IBAction private func buttonTouchPlus() {
        count += 1
        countLabel.text = "Значение счётчика: \(count)"
        historyTextView.text.append("[\(Date().dateInFormat)]: значение изменено на +1." + "\n")
    }
    
    @IBAction private func buttonTouchMinus() {
        if count > 0 {
            count -= 1
            countLabel.text = "Значение счётчика: \(count)"
            historyTextView.text.append("[\(Date().dateInFormat)]: значение изменено на -1." + "\n")
        } else {
            historyTextView.text.append("[\(Date().dateInFormat)]: попытка уменьшить значение счетчика ниже 0." + "\n")
        }
    }
    
    @IBAction private func buttonTouchReset() {
        count = 0
        countLabel.text = "Значение счётчика: \(count)"
        historyTextView.text.append("[\(Date().dateInFormat)]: значение сброшено." + "\n")
    }
    
}

