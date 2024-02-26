//
//  ViewController.swift
//  Counter
//
//  Created by Elina Shterengarts on 21.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countValue: UILabel!
    @IBOutlet weak var changeHistory: UITextView!
   
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countValue.text = "Значение счётчика: 0"
        changeHistory.text = "История изменений: " + "\n"
    }
    
    private var count: Int = 0
    
    @IBAction func buttonTouchPlus() {
        count += 1
        countValue.text = "Значение счётчика: \(count)"
        changeHistory.text.append("Значение изменено на +1." + "\n")
    }
    
    @IBAction func buttonTouchMinus() {
        if count > 0 {
            count -= 1
            countValue.text = "Значение счётчика: \(count)"
            changeHistory.text.append("Значение изменено на -1." + "\n")
        } else {
            changeHistory.text.append("Попытка уменьшить значение счетчика ниже 0." + "\n")
        }
    }
    
    @IBAction func buttonTouchReset() {
        count = 0
        countValue.text = "Значение счётчика: \(count)"
        changeHistory.text.append("Значение сброшено." + "\n")
    }
    
}

