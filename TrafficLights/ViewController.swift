//
//  ViewController.swift
//  TrafficLights
//
//  Created by Shilol Pesahov on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var colorNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.layer.cornerRadius = redColor.frame.height / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.height / 2
        greenColor.layer.cornerRadius = greenColor.frame.height / 2
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal) //Меняю имя кнопки
        setColor(colorNumber: colorNumber) //Определяем цвет
        colorNumber += 1
        if colorNumber > 2 {
            colorNumber = 0
        }
    }
    
    //Определяем как цвет будет гореть
    func setColor(colorNumber: Int) {
        switch colorNumber {
        case 0:
            resetColor()
            redColor.alpha = 1
        case 1:
            resetColor()
            yellowColor.alpha = 1
        case 2:
            resetColor()
            greenColor.alpha = 1
        default:
            break
        }
    }
    
    //Сбрасываем прозрачность в стандартные настройки
    func resetColor() {
        redColor.alpha = 0.5
        yellowColor.alpha = 0.5
        greenColor.alpha = 0.5
    }
    
}

