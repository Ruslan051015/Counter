//
//  ViewController.swift
//  Counter
//
//  Created by Руслан Халилулин on 15.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var isHandsRaised = false
    private var counter = 0
    
    @IBOutlet weak var figureImageView: UIImageView!
    @IBOutlet weak var incrementCounterButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        figureImageView.image = UIImage(systemName: "figure.arms.open")
        counterLabel.text = "Значение счётчика: 0"
       
    }

    @IBAction func incrementCounter(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
        if isHandsRaised {
            figureImageView.image = UIImage(systemName: "figure.arms.open")
        } else {
            figureImageView.image = UIImage(systemName: "figure.mixed.cardio")
        }
        isHandsRaised.toggle()
        
    }
    
    @IBAction func resetCounter(_ sender: Any) {
        counter = 0
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}

