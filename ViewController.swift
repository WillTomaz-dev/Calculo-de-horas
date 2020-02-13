//
//  ViewController.swift
//  Calculo de horas
//
//  Created by William Tomaz on 17/12/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hourOne: UITextField!
    @IBOutlet weak var minuteOne: UITextField!
    @IBOutlet weak var secondOne: UITextField!
    @IBOutlet weak var hourTwo: UITextField!
    @IBOutlet weak var minuteTwo: UITextField!
    @IBOutlet weak var secondTwo: UITextField!
    @IBOutlet weak var hourThree: UITextField!
    @IBOutlet weak var minuteThree: UITextField!
    @IBOutlet weak var secondThree: UITextField!
    
    @IBAction func additionButton(_ sender: Any) {
        let calculo = Calcular()
        let time = calculo.calculate(
            hour1: hourOne.text!,
            minute1: minuteOne.text!,
            second1: secondOne.text!,
            hour2: hourTwo.text!,
            minute2: minuteTwo.text!,
            second2: secondTwo.text!,
            operation: .add)
        
        hourThree.text = "\(time.hour)"
        minuteThree.text = "\(time.minute)"
        secondThree.text = "\(time.second)"
        
        resetBox()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        resetBox()
        cleanValues()
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
        let calculo = Calcular()
        let time = calculo.calculate(
            hour1: hourOne.text!,
            minute1: minuteOne.text!,
            second1: secondOne.text!,
            hour2: hourTwo.text!,
            minute2: minuteTwo.text!,
            second2: secondTwo.text!,
            operation: .sub)
        
        hourThree.text = "\(time.hour)"
        minuteThree.text = "\(time.minute)"
        secondThree.text = "\(time.second)"
        resetBox()
    }
    
    @IBAction func saveResultButton(_ sender: Any) {
        
        passValues()
        cleanValues()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func passValues(){
        
        hourOne.text = hourThree.text
        minuteOne.text = minuteThree.text
        secondOne.text = secondThree.text
    }
   
    func cleanValues(){
        hourThree.text = nil
        minuteThree.text = nil
        secondThree.text = nil
    }
    
    func resetBox(){
        hourOne.text = nil
        hourTwo.text = nil
        minuteOne.text = nil
        minuteTwo.text = nil
        secondOne.text = nil
        secondTwo.text = nil
       
    }
}
