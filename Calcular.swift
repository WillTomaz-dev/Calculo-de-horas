//
//  Calcular.swift
//  Calculo de horas
//
//  Created by William Tomaz on 19/12/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

enum OperationType {
    case add
    case sub
}

class Calcular {

    func calculate(hour1: String, minute1: String, second1: String, hour2: String, minute2: String, second2: String, operation: OperationType) -> (hour: Int, minute: Int, second: Int) {
        
        var hourFinal = 0
        var minuteFinal = 0
        var secondFinal = 0
        
        var hours = 0
        var minutes = 0
        var seconds = 0
        
        if let hourInt = Int(hour1) {
            hours = hourInt * 3600
        }
        if let minuteInt = Int(minute1){
            minutes = minuteInt * 60
        }
        if let secondInt = Int(second1){
            seconds = secondInt
        }
        let valueOne = hours + minutes + seconds
        
        var hoursTwo = 0
        var minutesTwo = 0
        var secondsTwo = 0
        
        if let hourIntTwo = Int(hour2) {
            hoursTwo = hourIntTwo * 3600
        }
        if let minuteIntTwo = Int(minute2){
            minutesTwo = minuteIntTwo * 60
        }
        if let secondIntTwo = Int(second2){
            secondsTwo = secondIntTwo
        }
        
        let valueTwo = hoursTwo + minutesTwo + secondsTwo
        
        var secondTotal: Int! //  = //valueOne + valueTwo
        
        switch operation {
        case .add:
            secondTotal = valueOne + valueTwo
        case .sub:
            secondTotal = valueOne - valueTwo
        }
        
        while(secondTotal >= 3600){
            secondTotal = secondTotal - 3600
            hourFinal = hourFinal + 1
        }
        while(secondTotal >= 60){
            secondTotal = secondTotal - 60
            minuteFinal = minuteFinal + 1
        }
        
        secondFinal = secondTotal
        
//        hourThree.text = String(hourFinal)
//        minuteThree.text = String(minuteFinal)
//        secondThree.text = String(secondFinal)
        return (hour: hourFinal, minute: minuteFinal, second: secondFinal)
    }
}
