//
//  ViewController.swift
//  Calculator-453534535345
//
//  Created by Павел Анплеенко on 10/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//


// 1. Добавить Label (+)
// 2. Добавить iuview (+)
// 3. Добавить цифры (+)
// 4. Написать код чтобы выводилился текст на экране по нажатию на цифры (+)
// 5. Отрезать трое точие когда цифр много (+)
// 6. Убрать первый 0 (+)
// 7. Добавить действия между двумя операндами (+)

import UIKit

class ViewController: UIViewController {
  var numberType = false // переменная которая определяет вводится первое чилсо или второе
  var firstOperand: Double = 0 //по умолчанию значение первого оперенда равняется 0
  var twoOperand: Double = 0 //по умолчанию значение второго оперенда равняется 0
  
  
  @IBOutlet weak var displayResultLabel: UILabel!
  @IBAction func numberButton(sender: UIButton) {
    
    let number = sender.currentTitle! //получает значение при нажатии на кнопку
    
    if numberType {
      // если длина принудительных символов текста displayResultLabel меньше 20
      if displayResultLabel.text?.characters.count < 20 {
        displayResultLabel.text = displayResultLabel.text! + number // Мы хотим чтобы displayResultLabel отобразил свой   текст + вывел значение полученные из цифр
      }else {
        displayResultLabel.text = displayResultLabel.text!
      }
      
    } else {
      // если же нет то текст в дисплее получает значение из цифр и меняет присваемыю переменную с фолс на тру и переменной numberType чтобы запустить условие при тру
      displayResultLabel.text = number
      numberType = true
    }
    
  }
  
  // действия между двумя операндами
  @IBAction func operandButton(sender: UIButton) {
  }
  
}

