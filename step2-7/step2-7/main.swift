//
//  main.swift
//  step2-7
//
//  Created by JH on 05/04/2019.
//  Copyright © 2019 JH. All rights reserved.
//

import Foundation

//단위환산변수
//길이
let inchCm : Double = 2.54
let yardCm : Double = 91.44
let mCm : Double = 100
//무게
let ozG : Double = 28.3495
let lbG : Double = 453.592
let kgG : Double = 1000
//부피
let ptMl : Double = 473.176
let qtMl : Double = 946.353
let lMl : Double = 1000


//단위변환계산함수
//길이
func cmToM (cm: Double) -> Double {
    return cm / mCm
}

func mToCm (m: Double) -> Double {
    return m * mCm
}

func cmToInch (cm: Double) -> Double {
    return cm / inchCm
}

func inchToCm (inch: Double) -> Double {
    return inch * inchCm
}

func mToInch (m: Double) -> Double {
    return m * (inchCm / mCm)
}

func inchToM (inch: Double) -> Double {
    return inch / (inchCm / mCm)
}

func yardToCm (yard: Double) -> Double {
    return yard * yardCm
}

func cmToYard (cm: Double) -> Double {
    return cm / yardCm
}

func yardToM (yard: Double) -> Double {
    return yard * (yardCm / mCm)
}

func mToYard (m: Double) -> Double {
    return m / (yardCm / mCm)
}

//무게
func gToKg (g: Double) -> Double {
    return g / kgG
}

func kgToG (kg: Double) -> Double {
    return kg * kgG
}

func gToOz (g: Double) -> Double {
    return g / ozG
}

func ozToG (oz: Double) -> Double {
    return oz * ozG
}

func kgToOz (kg: Double) -> Double {
    return kg * (ozG / kgG)
}

func ozToKg (oz: Double) -> Double {
    return oz / (ozG / kgG)
}

func lbToG (lb: Double) -> Double {
    return lb * lbG
}

func gToLb (g: Double) -> Double {
    return g / lbG
}

func lbToKg (lb: Double) -> Double {
    return lb * (lbG / kgG)
}

func kgToLb (kg: Double) -> Double {
    return kg / (lbG / kgG)
}

//부피

func mlToL (ml: Double) -> Double {
    return ml / lMl
}

func lToMl (l: Double) -> Double {
    return l * lMl
}

func mlToPt (ml: Double) -> Double {
    return ml / ptMl
}

func ptToMl (pt: Double) -> Double {
    return pt * ptMl
}

func ptToL (pt: Double) -> Double {
    return pt * (ptMl / lMl)
}

func lToPt (l: Double) -> Double {
    return l / (ptMl / lMl)
}

func mlToQt (ml: Double) -> Double {
    return ml * qtMl
}

func qtToMl (qt: Double) -> Double {
    return qt / qtMl
}

func qtToL (qt: Double) -> Double {
    return qt * (qtMl / lMl)
}

func lToQt (l: Double) -> Double {
    return l / (qtMl / lMl)
}




//다른함수에서도 사용되기 때문에 전역변수로
var inputNum = 0.0
var arrayInputNumUnit = Array<String>()

//입력받아 실행하는 함수
func input () {
    let inputNumUnit = readLine()!
    if inputNumUnit == "q" || inputNumUnit == "Q" {
        print("끝!")
        return
    }
    var arrayInputNumUnit = inputNumUnit.components(separatedBy: " ") //그래서 수정함
    inputNum = Double(arrayInputNumUnit[0])!//숫자
    trans(ar: arrayInputNumUnit)
}


//단위환산계산하는 함수
func trans (ar: Array<String>){
    var arr = ar
    if arr.count == 2 {
        arr.append(" ")
    }
    if arr.count == 3 {
        let from = arr[1]
        let to = arr[2]
        
        switch (from, to) {
            
        case ("cm", "inch") :
            print("\(cmToInch(cm: inputNum))inch 입니다")
        case ("cm", "m"),("cm", " ") :
            print("\(cmToM(cm: inputNum))m 입니다")
        case ("cm", "yard") :
            print("\(cmToYard(cm: inputNum))yard 입니다")
        case ("m", "inch") :
            print("\(mToInch(m:inputNum))inch 입니다")
        case ("m", "cm"),("m", " ") :
            print("\(mToCm(m:inputNum))m 입니다")
        case ("m", "yard") :
            print("\(mToYard(m:inputNum))yard 입니다")
        case ("inch", "cm"),("inch", " ") :
            print("\(inchToCm(inch:inputNum))cm 입니다")
        case ("inch", "m") :
            print("\(inchToM(inch:inputNum))m 입니다")
        case ("yard", "cm") :
            print("\(yardToCm(yard:inputNum))cm 입니다")
        case ("yard", "m"), ("yard", " ") :
            print("\(yardToM(yard:inputNum))m 입니다")
            
        case ("g", " "), ("g", "kg") :
            print("\(gToKg (g: inputNum))kg 입니다")
        case ("kg", " "), ("kg", "g") :
            print("\(kgToG (kg: inputNum))g 입니다")
        case ("kg", "oz") :
            print("\(kgToOz (kg: inputNum))oz 입니다")
        case ("oz", " "), ("oz", "g") :
            print("\(ozToG (oz: inputNum))g 입니다")
        case ("g", "oz") :
            print("\(gToOz (g: inputNum))oz 입니다")
        case ("g", "lb") :
            print("\(gToLb (g: inputNum))lb 입니다")
        case ("kg", "lb") :
            print("\(kgToLb (kg: inputNum))lb 입니다")
        case ("oz", "kg") :
            print("\(ozToKg (oz: inputNum))kg 입니다")
        case ("lb", "g") :
            print("\(lbToG (lb: inputNum))g 입니다")
        case ("lb", " "), ("lb", "kg") :
            print("\(lbToKg (lb: inputNum))kg 입니다")
            
        case ("ml", "pt") :
            print("\(mlToPt(ml: inputNum))pt 입니다")
        case ("ml", "l"),("ml", " ") :
            print("\(mlToL(ml: inputNum))L 입니다")
        case ("ml", "qt") :
            print("\(mlToQt(ml: inputNum))qt 입니다")
        case ("l", "pt") :
            print("\(lToPt(l:inputNum))pt 입니다")
        case ("l", "ml"),("l", " ") :
            print("\(lToMl(l:inputNum))ml 입니다")
        case ("l", "qt") :
            print("\(lToQt(l:inputNum))qt 입니다")
        case ("pt", "ml"),("pt", " ") :
            print("\(ptToMl(pt:inputNum))ml 입니다")
        case ("pt", "l") :
            print("\(ptToL(pt:inputNum))L 입니다")
        case ("qt", "ml") :
            print("\(qtToMl(qt:inputNum))ml 입니다")
        case ("qt", "l"), ("qt", " ") :
            print("\(qtToL(qt:inputNum))L 입니다")
            
            
        default :
            print("지원하지 않는 단위입니다")
        }
    }
    input()
}

//처음실행 호출
input()



