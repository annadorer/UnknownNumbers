//
//  main.swift
//  UnknownNumbers
//
//  Created by Anna on 24.01.2023.
//

import Foundation

let randomNumber = UInt8(arc4random_uniform(50))
print("Компьютер случайным образом загадал число. Вам требуется отгадать его")
var userNumber: String?
repeat {
    print("Введите ваше число")
    userNumber = readLine()
    //сравнение введеннного и сгенерированного числа
    if (UInt8(userNumber!) == randomNumber){
        print("Вы угадали число!")
    }else if (UInt8(userNumber!)! > randomNumber){
        print("Ваше число больше загаданного числа")
    }else if (UInt8(userNumber!)! < randomNumber){
        print("Ваше число меньше загаданного числа")
    }
} while randomNumber != UInt8(userNumber!)
