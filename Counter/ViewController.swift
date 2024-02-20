//
//  ViewController.swift
//  Counter
//
//  Created by Elina Shterengarts on 21.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countValue: UILabel!
    
    @IBOutlet weak var countButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countValue.text = "Значение счётчика: 0"
    }
    
    private var count: Int = 0
    
    @IBAction func buttonDidTap() {
        count += 1
        countValue.text = "Значение счётчика: \(count)"
    }
}

